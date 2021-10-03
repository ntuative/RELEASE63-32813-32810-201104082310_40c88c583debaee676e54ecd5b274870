package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2144:int;
      
      private var var_2488:int;
      
      private var var_1122:int;
      
      private var var_1120:int;
      
      private var var_1737:int;
      
      private var var_2489:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2144 = param1.readInteger();
         this.var_2488 = param1.readInteger();
         this.var_1122 = param1.readInteger();
         this.var_1120 = param1.readInteger();
         this.var_1737 = param1.readInteger();
         this.var_2489 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2144;
      }
      
      public function get charges() : int
      {
         return this.var_2488;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1122;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1120;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2489;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1737;
      }
   }
}
