package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2377:int;
      
      private var var_2519:int;
      
      private var var_2521:int;
      
      private var _dayOffsets:Array;
      
      private var var_1976:Array;
      
      private var var_1975:Array;
      
      private var var_2520:int;
      
      private var var_2522:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2377;
      }
      
      public function get offerCount() : int
      {
         return this.var_2519;
      }
      
      public function get historyLength() : int
      {
         return this.var_2521;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1976;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1975;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2520;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2522;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2377 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2519 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1976 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1975 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2520 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2522 = param1;
      }
   }
}
