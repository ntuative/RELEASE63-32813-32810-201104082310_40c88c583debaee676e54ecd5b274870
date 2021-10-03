package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1492:int;
      
      private var var_309:String;
      
      private var var_2308:int;
      
      private var var_2309:int;
      
      private var var_1893:int;
      
      private var var_2310:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1492 = param1.readInteger();
         this.var_309 = param1.readString();
         this.var_2308 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_2310 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_309;
      }
      
      public function get level() : int
      {
         return this.var_1492;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2308;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2309;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1893;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2310;
      }
   }
}
