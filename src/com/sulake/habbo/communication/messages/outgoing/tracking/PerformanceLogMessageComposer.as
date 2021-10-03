package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2222:int = 0;
      
      private var var_1361:String = "";
      
      private var var_1649:String = "";
      
      private var var_2184:String = "";
      
      private var var_2559:String = "";
      
      private var var_1885:int = 0;
      
      private var var_2558:int = 0;
      
      private var var_2557:int = 0;
      
      private var var_1363:int = 0;
      
      private var var_2556:int = 0;
      
      private var var_1362:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2222 = param1;
         this.var_1361 = param2;
         this.var_1649 = param3;
         this.var_2184 = param4;
         this.var_2559 = param5;
         if(param6)
         {
            this.var_1885 = 1;
         }
         else
         {
            this.var_1885 = 0;
         }
         this.var_2558 = param7;
         this.var_2557 = param8;
         this.var_1363 = param9;
         this.var_2556 = param10;
         this.var_1362 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2222,this.var_1361,this.var_1649,this.var_2184,this.var_2559,this.var_1885,this.var_2558,this.var_2557,this.var_1363,this.var_2556,this.var_1362];
      }
   }
}
