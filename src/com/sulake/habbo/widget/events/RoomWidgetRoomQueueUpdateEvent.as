package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_425:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_468:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1149:int;
      
      private var var_2239:Boolean;
      
      private var var_456:Boolean;
      
      private var var_1963:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1149 = param2;
         this.var_2239 = param3;
         this.var_456 = param4;
         this.var_1963 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1149;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2239;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_456;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1963;
      }
   }
}
