package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_2453:Number = 0;
      
      private var var_2452:Number = 0;
      
      private var var_2454:Number = 0;
      
      private var var_2450:Number = 0;
      
      private var var_340:int = 0;
      
      private var var_2253:int = 0;
      
      private var var_329:Array;
      
      private var var_2451:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_329 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_153 = param3;
         this.var_152 = param4;
         this.var_2453 = param5;
         this.var_340 = param6;
         this.var_2253 = param7;
         this.var_2452 = param8;
         this.var_2454 = param9;
         this.var_2450 = param10;
         this.var_2451 = param11;
         this.var_329 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function get localZ() : Number
      {
         return this.var_2453;
      }
      
      public function get targetX() : Number
      {
         return this.var_2452;
      }
      
      public function get targetY() : Number
      {
         return this.var_2454;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2450;
      }
      
      public function get dir() : int
      {
         return this.var_340;
      }
      
      public function get dirHead() : int
      {
         return this.var_2253;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2451;
      }
      
      public function get actions() : Array
      {
         return this.var_329.slice();
      }
   }
}
