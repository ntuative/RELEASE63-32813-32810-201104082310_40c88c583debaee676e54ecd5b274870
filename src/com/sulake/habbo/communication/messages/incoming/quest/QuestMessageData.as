package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2302:String;
      
      private var var_2301:int;
      
      private var var_2303:int;
      
      private var var_1737:int;
      
      private var _id:int;
      
      private var var_2306:Boolean;
      
      private var _type:String;
      
      private var var_1708:String;
      
      private var var_1707:int;
      
      private var var_2304:String;
      
      private var var_2300:int;
      
      private var var_2305:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2302 = param1.readString();
         this.var_2301 = param1.readInteger();
         this.var_2303 = param1.readInteger();
         this.var_1737 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2306 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1708 = param1.readString();
         this.var_1707 = param1.readInteger();
         this.var_2304 = param1.readString();
         this.var_2300 = param1.readInteger();
         this.var_2305 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1708 = "";
         this.var_1707 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_2302;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2301;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2303;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1737;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2306;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1708;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1707;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2304;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2300;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2305;
      }
   }
}
