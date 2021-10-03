package com.sulake.habbo.widget.events
{
   public class RoomWidgetClothingChangeUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_406:String = "RWCCUE_SHOW_GENDER_SELECTION";
      
      public static const const_1133:String = "RWCCUE_SHOW_CLOTHING_EDITOR";
      
      public static const const_367:String = "RWCCUE_HIDE_CLOTHING_EDITOR";
       
      
      private var var_343:int = -1;
      
      private var var_2358:int = -1;
      
      private var _roomId:int = -1;
      
      private var _roomCategory:int = -1;
      
      public function RoomWidgetClothingChangeUpdateEvent(param1:String, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_343 = param2;
         this.var_2358 = param3;
         this._roomId = param4;
         this._roomCategory = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_343;
      }
      
      public function get objectCategory() : int
      {
         return this.var_2358;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
   }
}
