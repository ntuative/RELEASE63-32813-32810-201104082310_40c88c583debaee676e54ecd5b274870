package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1261:String = "M";
      
      public static const const_1689:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_340:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_1048:String = "";
      
      private var var_599:String = "";
      
      private var var_2115:String = "";
      
      private var var_2113:int;
      
      private var var_2111:int = 0;
      
      private var var_2112:String = "";
      
      private var var_2110:int = 0;
      
      private var var_2114:int = 0;
      
      private var var_2594:String = "";
      
      private var var_181:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_181)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_181)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1048;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_1048 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_599 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2115;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2115 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2113;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2113 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2111;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2111 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2112;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2112 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2110;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2110 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2114;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2114 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2594;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2594 = param1;
         }
      }
   }
}
