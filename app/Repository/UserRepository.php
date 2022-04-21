<?php

namespace App\Repository;

use App\Models\Web\Customer;
use App\User;
use App\Http\Controllers\Web\AlertController;
use App\Repository\IUserRepository;
use Illuminate\Support\Facades\Hash;
use DB;

class UserRepository implements IUserRepository
{
    protected $user = null;

    public function getAllUsers()
    {
        return User::all();
    }

    public function getUserById($id)
    {
        return User::find($id);
    }

    public function generateData($collection)
    {
        $data = [];
        $data['Validinvitationcode'] = 0;
        $data['Validinvitationcodestatus'] = 0;
        if (isset($collection['id'])) {
            $user = $this->getUserById($collection['id']);
            $data['Validinvitationcode'] = $user['Validinvitationcode'];
            $data['Validinvitationcodestatus']  = $user['Validinvitationcodestatus'];
            $data['six_digit_random_number'] = $user['six_digit_random_number'];
            $data['password'] = $user['password'];
        } else {
            if (isset($collection['invitationcode'])) {
                $data = $collection['invitationcode'];
                $whatIWant = substr($data, strpos($data, "-") + 1);
                $ref_User_Data = $this->getUserById($whatIWant);

                if (isset($ref_User_Data->id)) {
                    $data['Validinvitationcode'] = $whatIWant;
                    $data['Validinvitationcodestatus'] = 1;
                }
            }
            $data['six_digit_random_number'] = random_int(100000, 999999);
            $data['password'] =  Hash::make($collection['password']);
        }

        return $data;
    }

    public function createOrUpdateUser($collection = [])
    {
        $genrateData = $this->generateData($collection);
        $collection['dob'] = $collection['day'] . '/' . $collection['month'] . '/' . $collection['year'];
        $userSave = User::updateOrCreate(
            [
                'id' => $collection['id'] ?? null
            ],
            [
                'first_name' => $collection['first_name'],
                'last_name' => $collection['last_name'],
                'phone' => $collection['country_code'] . '' . $collection['phone'],
                'role_id' => 2,
                'email' => $collection['email'],
                'gender' => $collection['gender'],
                'dob' => $collection['month'] . '/' . $collection['day'] . '/' . $collection['year'],
                'password' => $genrateData['password'],
                'refered_by' => $genrateData['Validinvitationcode'],
                'otp_code' => $genrateData['six_digit_random_number'],
                'refered_by_status' => $genrateData['Validinvitationcodestatus']
            ]
        );
        $message = 'User updated Sucessfully';
        if (is_null(@$collection['id'])) {
            $myVar = new AlertController();
            $alertSetting = $myVar->checkapiresponse($userSave['id'], $genrateData['six_digit_random_number']);
            $message = 'User added Sucessfully';
        }
        return $message;
    }

    public function deleteUser($id)
    {
        return User::find($id)->delete();
    }

    // send alert after registration
    public function sendAlert($customer)
    {
        $userDetail = $this->getUserById($customer->id);
        $userDetail->is_otp_verify = 1;
        $userDetail->otp_code = 0;
        $userDetail->save();
        $customer_array[0] = $customer;
        $myVar = new AlertController();
        $alertSetting = $myVar->createUserAlert($customer_array);
    }

    public function HandleSocialLogin($collection = '')
    {

        if (!empty($collection['gender'])) {
            if ($collection['gender'] == 'male') {
                $customers_gender = '0';
            } else {
                $customers_gender = '1';
            }
        } else {
            $customers_gender = '0';
        }
        $customers_firstname = substr($collection['name'], 0, strpos($collection['name'], ' '));
        $customers_lastname = str_replace($customers_firstname . ' ', '', $collection['name']);
        if ($collection['social_type'] == 'facebook') {
            $columln_name = "fb_id";
        } else {
            $columln_name = "google_id";
        }
        $existUser = Customer::rightJoin('users', 'customers.user_id', '=', 'users.id')
            ->where('customers.' . $columln_name, '=', $collection['social_id'])
            ->orWhere('users.email', '=', $collection['email'])->get();
// print_r($existUser);die;
        if (count($existUser) > 0) {
            $user_id = @$existUser[0]->user_id ?: $existUser[0]->id;
            //update data of customer
            User::where('id', '=', $user_id)->update([
                'first_name' => $customers_firstname,
                'last_name' => $customers_lastname,
                'email' => $collection['email'],
                'password' => Hash::make('123456'),
                'status' => '1',
                'is_otp_verify' => '1',
                'gender' => $customers_gender
            ]);
            if (empty($existUser[0]->fb_id)) {
                $customers_id = Customer::insertGetId([
                    'user_id' => $user_id,
                    $columln_name => $collection['social_id'],
                ]);
            } else {
                Customer::where('user_id', '=', $user_id)->update([
                    $columln_name => $collection['social_id'],
                ]);
            }
        } else {
            //insert data of customer
            $user_id = User::insertGetId([
                'role_id' => 2,
                'first_name' => $customers_firstname,
                'last_name' => $customers_lastname,
                'email' => $collection['email'],
                'password' =>  Hash::make('123456'),
                'status' => '1',
                'is_otp_verify' => '1',
                'gender' => $customers_gender
            ]);
            $customers_id = Customer::insertGetId([
                'user_id' => $user_id,
                $columln_name => $collection['social_id'],
            ]);
        }

        return $user_id;
    }

    public function UpdateTokens($id, $device_token, $jwt_token)
    {
        $affected = User::where('id', $id)->update([ 'device_token' => $device_token]);
        return $affected;
    }
}
