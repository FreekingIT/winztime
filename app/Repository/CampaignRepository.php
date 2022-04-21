<?php 
namespace App\Repository;
use App\Models\Web\Campaign;
use App\User;
use App\Http\Controllers\Web\AlertController;
use App\Repository\ICampaignRepository;
use Illuminate\Support\Facades\Hash;
use DB;
class CampaignRepository implements ICampaignRepository
{   
    protected $campaign = null;

    public function getActiveCampaigns()
    {
        $campaigns = Campaign::with(array('Product:products_id,products_price','ProductDescription:products_id,products_name,products_description','Reward:id,title as reward_title,reward_image'))->select('campaigns.id as campaigns_id', 'campaigns.title as campaigns_title', 'campaigns.end_date', 'campaigns.reward_id', 'campaigns.product_id', 'no_of_orders', 'no_customers','campaign_type')
            ->orderBy('campaigns.id', 'desc')
            // ->groupBy('campaigns.id')
            ->where('campaigns.status', '1')->whereRaw('campaigns.start_date <= CURDATE()')
            ->get();
            return $campaigns;
    }

    public function getCampaignById($id)
    {
        return Campaign::with('Product:products_id,products_price','ProductDescription:products_id,products_name,products_description','Reward:id,title as reward_title,reward_image')->find($id);
    }

  

}

?>