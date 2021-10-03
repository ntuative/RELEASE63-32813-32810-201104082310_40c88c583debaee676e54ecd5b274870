package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_822:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2020:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_822,false,false);
         this.var_2020 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2020;
      }
   }
}
