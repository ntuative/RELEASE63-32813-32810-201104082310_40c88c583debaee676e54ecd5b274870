package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_471:String = "RWTDUE_TEASER_DATA";
      
      public static const const_671:String = "RWTDUE_GIFT_DATA";
      
      public static const const_807:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_343:int;
      
      private var _data:String;
      
      private var var_399:int;
      
      private var var_191:String;
      
      private var var_2346:String;
      
      private var var_2744:Boolean;
      
      private var var_1577:int = 0;
      
      private var var_2743:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_343;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_399;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2346;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2744;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2743;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1577;
      }
      
      public function set status(param1:int) : void
      {
         this.var_399 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2346 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2744 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2743 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_343 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_191;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_191 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1577 = param1;
      }
   }
}
