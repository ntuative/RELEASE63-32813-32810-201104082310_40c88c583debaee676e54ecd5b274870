package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_119:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_133:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1078:int = 2;
      
      public static const const_1046:int = 3;
      
      public static const const_1538:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1726:String = "";
      
      private var var_2113:int;
      
      private var var_2111:int = 0;
      
      private var var_2114:int = 0;
      
      private var var_599:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_266:Array;
      
      private var var_1469:int = 0;
      
      private var var_2427:String = "";
      
      private var var_2417:int = 0;
      
      private var var_2428:int = 0;
      
      private var var_1734:Boolean = false;
      
      private var var_1620:String = "";
      
      private var var_2426:Boolean = false;
      
      private var var_2420:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2419:Boolean = false;
      
      private var var_2422:Boolean = false;
      
      private var var_2418:Boolean = false;
      
      private var var_2421:Boolean = false;
      
      private var var_2424:Boolean = false;
      
      private var var_2425:Boolean = false;
      
      private var var_2423:int = 0;
      
      private var var_1732:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_266 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1726 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1726;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2113 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2113;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2111 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2111;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2114 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2114;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_599 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_266 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_266;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1469 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1469;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2427 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2427;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2426 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2426;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2419 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2419;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2422 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2422;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2418 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2418;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2421 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2421;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2424 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2424;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2425 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2425;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2423;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2420 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2420;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1732 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1732;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2417 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2417;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2428 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2428;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1734 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1734;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1620 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
   }
}
