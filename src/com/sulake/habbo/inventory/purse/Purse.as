package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1743:int = 0;
      
      private var var_1744:int = 0;
      
      private var var_2601:int = 0;
      
      private var var_2602:Boolean = false;
      
      private var var_2265:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1743 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1744 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2601 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2602 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1743;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1744;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2601;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2602;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2265;
      }
   }
}
