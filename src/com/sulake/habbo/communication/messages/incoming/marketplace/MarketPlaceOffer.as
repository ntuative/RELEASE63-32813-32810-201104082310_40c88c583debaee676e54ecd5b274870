package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2376:int;
      
      private var var_2103:String;
      
      private var var_1769:int;
      
      private var var_399:int;
      
      private var var_2379:int = -1;
      
      private var var_2377:int;
      
      private var var_1770:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2376 = param3;
         this.var_2103 = param4;
         this.var_1769 = param5;
         this.var_399 = param6;
         this.var_2379 = param7;
         this.var_2377 = param8;
         this.var_1770 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2376;
      }
      
      public function get stuffData() : String
      {
         return this.var_2103;
      }
      
      public function get price() : int
      {
         return this.var_1769;
      }
      
      public function get status() : int
      {
         return this.var_399;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2379;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2377;
      }
      
      public function get offerCount() : int
      {
         return this.var_1770;
      }
   }
}
