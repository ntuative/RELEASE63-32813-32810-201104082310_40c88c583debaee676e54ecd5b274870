package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2335:int;
      
      private var var_1364:String;
      
      private var _objId:int;
      
      private var var_1889:int;
      
      private var _category:int;
      
      private var var_2103:String;
      
      private var var_2752:Boolean;
      
      private var var_2751:Boolean;
      
      private var var_2753:Boolean;
      
      private var var_2199:Boolean;
      
      private var var_2621:int;
      
      private var var_1374:int;
      
      private var var_1786:String = "";
      
      private var var_1674:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2335 = param1;
         this.var_1364 = param2;
         this._objId = param3;
         this.var_1889 = param4;
         this._category = param5;
         this.var_2103 = param6;
         this.var_2752 = param7;
         this.var_2751 = param8;
         this.var_2753 = param9;
         this.var_2199 = param10;
         this.var_2621 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1786 = param1;
         this.var_1374 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2335;
      }
      
      public function get itemType() : String
      {
         return this.var_1364;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1889;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2103;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2752;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2751;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2753;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2199;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2621;
      }
      
      public function get slotId() : String
      {
         return this.var_1786;
      }
      
      public function get songId() : int
      {
         return this.var_1674;
      }
      
      public function get extra() : int
      {
         return this.var_1374;
      }
   }
}
