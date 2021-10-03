package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1674:int;
      
      private var var_1809:Number;
      
      private var var_2434:Number;
      
      private var var_2435:int;
      
      private var var_2436:Number;
      
      private var var_2437:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1674 = param1;
         this.var_1809 = param2;
         this.var_2434 = param3;
         this.var_2436 = param4;
         this.var_2437 = param5;
         this.var_2435 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1674;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1809 < 0)
         {
            return 0;
         }
         return this.var_1809 + (getTimer() - this.var_2435) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2434;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2436;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2437;
      }
   }
}
