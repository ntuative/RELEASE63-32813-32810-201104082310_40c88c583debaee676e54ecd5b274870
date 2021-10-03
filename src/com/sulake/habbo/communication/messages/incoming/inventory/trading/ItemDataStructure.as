package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2250:int;
      
      private var var_1364:String;
      
      private var var_2402:int;
      
      private var var_2404:int;
      
      private var _category:int;
      
      private var var_2103:String;
      
      private var var_1374:int;
      
      private var var_2403:int;
      
      private var var_2400:int;
      
      private var var_2401:int;
      
      private var var_2399:int;
      
      private var var_2398:Boolean;
      
      private var var_2934:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2250 = param1;
         this.var_1364 = param2;
         this.var_2402 = param3;
         this.var_2404 = param4;
         this._category = param5;
         this.var_2103 = param6;
         this.var_1374 = param7;
         this.var_2403 = param8;
         this.var_2400 = param9;
         this.var_2401 = param10;
         this.var_2399 = param11;
         this.var_2398 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2250;
      }
      
      public function get itemType() : String
      {
         return this.var_1364;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2402;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2404;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2103;
      }
      
      public function get extra() : int
      {
         return this.var_1374;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2403;
      }
      
      public function get creationDay() : int
      {
         return this.var_2400;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2401;
      }
      
      public function get creationYear() : int
      {
         return this.var_2399;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2398;
      }
      
      public function get songID() : int
      {
         return this.var_1374;
      }
   }
}
