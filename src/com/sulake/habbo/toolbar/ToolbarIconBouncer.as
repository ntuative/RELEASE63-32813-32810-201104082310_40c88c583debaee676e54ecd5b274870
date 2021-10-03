package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2514:Number;
      
      private var var_1783:Number;
      
      private var var_963:Number;
      
      private var var_491:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2514 = param1;
         this.var_1783 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_963 = param1;
         this.var_491 = 0;
      }
      
      public function update() : void
      {
         this.var_963 += this.var_1783;
         this.var_491 += this.var_963;
         if(this.var_491 > 0)
         {
            this.var_491 = 0;
            this.var_963 = this.var_2514 * -1 * this.var_963;
         }
      }
      
      public function get location() : Number
      {
         return this.var_491;
      }
   }
}
