<?php

namespace App\Http\Controllers\Api\V1;
//use App\Traits\RespondsWithHttpStatus;
use App\traits\RespondsWithHttpStatus;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Web\AlertController;
use App\Repository\IUserRepository;
use App\User;
use Exception;
use DB;
use JWTAuth;
use JWTFactory;
use App\Models\Web\Customer;
use Tymon\JWTAuth\Exceptions\JWTException;

class RegisterController extends Controller
{
    use RespondsWithHttpStatus;

    public $user;

    public function __construct(IUserRepository $user)
    {
        $this->user = $user;
    }


    // Register and update user
    public function saveUser(Request $request, $id = null)
    {
        $collection = $request->all();
        $validator = Validator::make($request->all(), [
            'id' => 'nullable|exists:users,id',
            'first_name' => 'required',
            'last_name' => 'required',
            'gender' => 'required|in:0,1', // 0 =male, 1=female
            'email' => 'required|email|unique:users,email,' . @$request['id'],
            'month' => 'required',
            'day' => 'required',
            'year' => 'required',
            'password' => 'required',
            're_password' => 'required | same:password',
            'country_code' => 'required',
            'phone' => 'required'
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->messages()->first();
            $response['status'] = false;
            $response['code'] = 400;
        } else {
            $message = $this->user->createOrUpdateUser($collection);
            $response['message'] = $message;
            $response['status'] = true;
            $response['code'] = 200;
        }
        return $this->respose($response);
    }

    //Verify account by OTP
    public function VerifyAccount(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'otp_code' => 'required|numeric|exists:users,otp_code,email,' . $request['email'] . ',is_otp_verify,0,role_id,2',
            'email' => 'required|email|exists:users,email',
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->messages()->first();
            $response['status'] = false;
            $response['code'] = 400;
        } else {
            $user = User::where('email', $request->email)->first();
            $this->user->sendAlert($user);
            $response['message'] = 'User verified successfully';
            $response['status'] = true;
            $response['code'] = 200;
        }
        return $this->respose($response);
    }

    // Login API 
    public function login(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'email' => 'required|email|exists:users,email,is_otp_verify,1',
            'password' => 'required',
            'device_token' => 'required'
        ]);
        if ($validator->fails()) {
            $response['message'] = $validator->messages()->first();
            $response['status'] = false;
            $response['code'] = 400;
        } else {
            $credentials = $request->only(['email', 'password']);
            if (!$token = JWTAuth::attempt($credentials)) {
                $response['message'] = "You have enter wrong credentials or please verify your account";
                $response['status'] = false;
                $response['code'] = 400;
            } else {
                $user = JWTAuth::user();
                $user['token'] = $token;
                $affected = $this->user->UpdateTokens($user->id, $request->device_token, $token);
                $response['message'] = 'You are sucessfully logged in';
                $response['status'] = true;
                $response['code'] = 200;
                $response['data'] = $user;
            }
        }
        return $this->respose($response);
    }


    // Login API 
    public function Sociallogin(Request $request)
    {
        try {
            $input = $request->all();
            $validator = Validator::make($input, [
                'email' => 'required',
                'social_id' => 'required',
                'name' => 'required',
                'social_type' => 'required',
                'device_token' => 'required',
            ]);
            if ($validator->fails()) {
                throw new Exception($validator->errors()->first());
            } else {
                DB::beginTransaction();
                $user_id =    $this->user->HandleSocialLogin($input);
                $credentials = array("email" => $request->email, "password" => '123456');
                $accessToken = JWTAuth::attempt($credentials);
                $affected = $this->user->UpdateTokens($user_id, $request->device_token, $accessToken);
                $user = $this->user->getUserById($user_id);
                $this->user->sendAlert($user);
                DB::commit();
                $user['token'] = $accessToken;
                return $this->success('User login successfully', $user);
            }
        } catch (\Exception $e) {
            DB::rollback();
            return $this->failure($e->getMessage());
        }
    }
}
