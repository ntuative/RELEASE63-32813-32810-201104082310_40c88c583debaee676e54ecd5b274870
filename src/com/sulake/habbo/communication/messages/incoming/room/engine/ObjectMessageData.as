package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_340:int = 0;
      
      private var var_531:int = 0;
      
      private var var_638:int = 0;
      
      private var _type:int = 0;
      
      private var var_2946:String = "";
      
      private var var_1374:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2621:int = 0;
      
      private var var_2622:String = null;
      
      private var var_181:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_181)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_153 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_152 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_340;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_340 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_531;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_531 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_638;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_638 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_181)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_181)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_181)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2622;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2622 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1374;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_1374 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2621;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2621 = param1;
         }
      }
   }
}
