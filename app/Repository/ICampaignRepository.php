<?php
namespace App\Repository;

interface ICampaignRepository 
{
    public function getActiveCampaigns();

    public function getCampaignById($id);
}
?>