package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_911:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2118:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_911);
         this.var_2118 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2118;
      }
   }
}
