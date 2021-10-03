package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2861:int;
      
      private var var_2859:int;
      
      private var var_2860:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2861 = param1;
         this.var_2859 = param2;
         this.var_2860 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2861,this.var_2859,this.var_2860];
      }
      
      public function dispose() : void
      {
      }
   }
}
