package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_198:int = 0;
       
      
      private var var_2028:int = 0;
      
      private var var_1407:Dictionary;
      
      private var var_1743:int = 0;
      
      private var var_1744:int = 0;
      
      private var var_2265:Boolean = false;
      
      private var var_2263:int = 0;
      
      private var var_2271:int = 0;
      
      public function Purse()
      {
         this.var_1407 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2028;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2028 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1743;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1743 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1744;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1744 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1743 > 0 || this.var_1744 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2265;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2263;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2263 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2271;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1407;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1407 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1407[param1];
      }
   }
}
