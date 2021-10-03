package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1790:int;
      
      private var var_2413:int;
      
      private var var_1433:int;
      
      private var var_2414:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1790 = param1.readInteger();
         this.var_2413 = param1.readInteger();
         this.var_1433 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1790);
      }
      
      public function get callId() : int
      {
         return this.var_1790;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2413;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1433;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2414;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_108;
      }
   }
}
