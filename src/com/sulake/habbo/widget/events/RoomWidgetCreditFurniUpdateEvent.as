package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_664:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_343:int;
      
      private var var_2475:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_2475 = param3;
         this.var_343 = param2;
      }
      
      public function get creditValue() : Number
      {
         return this.var_2475;
      }
      
      public function get objectId() : int
      {
         return this.var_343;
      }
   }
}
