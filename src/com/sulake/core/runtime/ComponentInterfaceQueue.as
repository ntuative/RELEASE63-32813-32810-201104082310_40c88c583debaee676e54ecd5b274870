package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1814:IID;
      
      private var var_1063:Boolean;
      
      private var var_1148:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1814 = param1;
         this.var_1148 = new Array();
         this.var_1063 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1814;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1063;
      }
      
      public function get receivers() : Array
      {
         return this.var_1148;
      }
      
      public function dispose() : void
      {
         if(!this.var_1063)
         {
            this.var_1063 = true;
            this.var_1814 = null;
            while(this.var_1148.length > 0)
            {
               this.var_1148.pop();
            }
            this.var_1148 = null;
         }
      }
   }
}
