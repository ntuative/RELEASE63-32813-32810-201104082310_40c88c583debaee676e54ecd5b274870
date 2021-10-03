package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_473:int = 0;
      
      public static const const_212:int = 1;
      
      public static const const_125:int = 2;
      
      public static const const_667:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1685:String;
      
      private var var_2224:int;
      
      private var var_1397:int;
      
      private var var_2230:int;
      
      private var var_2229:int;
      
      private var var_865:Array;
      
      private var var_2226:Array;
      
      private var var_2227:int;
      
      private var var_2225:Boolean;
      
      private var var_2228:Boolean;
      
      private var var_2231:Boolean;
      
      private var var_2223:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2225;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2225 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2228;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2228 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2231;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2231 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2223;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2223 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1685;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1685 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2224;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2224 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1397;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1397 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2230;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2230 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2229;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2229 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_865;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_865 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2226;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2226 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2227;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2227 = param1;
      }
   }
}
