package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2486:String;
      
      private var var_2487:Array;
      
      private var var_2485:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2486 = param1;
         this.var_2487 = param2;
         this.var_2485 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2486;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2487;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2485;
      }
   }
}
