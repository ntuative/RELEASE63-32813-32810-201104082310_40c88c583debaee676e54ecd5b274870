package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1664:String;
      
      private var var_1769:int;
      
      private var var_2473:Boolean;
      
      private var var_2471:Boolean;
      
      private var var_2472:int;
      
      private var var_2469:int;
      
      private var var_357:ICatalogPage;
      
      private var var_2468:int;
      
      private var var_2474:int;
      
      private var var_2470:int;
      
      private var var_1568:String;
      
      private var var_2618:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1664 = param2;
         this.var_1769 = param3;
         this.var_2473 = param4;
         this.var_2471 = param5;
         this.var_2472 = param6;
         this.var_2469 = param7;
         this.var_2468 = param8;
         this.var_2474 = param9;
         this.var_2470 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1568;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1568 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1664;
      }
      
      public function get price() : int
      {
         return this.var_1769;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2473;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2471;
      }
      
      public function get periods() : int
      {
         return this.var_2472;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2469;
      }
      
      public function get year() : int
      {
         return this.var_2468;
      }
      
      public function get month() : int
      {
         return this.var_2474;
      }
      
      public function get day() : int
      {
         return this.var_2470;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_198;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1769;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_357;
      }
      
      public function get priceType() : String
      {
         return Offer.const_878;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1664;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_357 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2618;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2618 = param1;
      }
   }
}
