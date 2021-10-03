package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1492:int;
      
      private var var_1709:int;
      
      private var var_2309:int;
      
      private var var_1893:int;
      
      private var var_1491:int;
      
      private var var_2297:String = "";
      
      private var var_2857:String = "";
      
      private var var_2856:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1492 = param1.readInteger();
         this.var_2297 = param1.readString();
         this.var_1709 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_1491 = param1.readInteger();
         this.var_2856 = param1.readInteger();
         this.var_2857 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1492;
      }
      
      public function get points() : int
      {
         return this.var_1709;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2309;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1893;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1491;
      }
      
      public function get badgeID() : String
      {
         return this.var_2297;
      }
      
      public function get achievementID() : int
      {
         return this.var_2856;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2857;
      }
   }
}
