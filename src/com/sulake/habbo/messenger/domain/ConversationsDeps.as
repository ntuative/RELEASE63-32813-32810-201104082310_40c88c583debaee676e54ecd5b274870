package com.sulake.habbo.messenger.domain
{
   import com.sulake.habbo.messenger.HabboMessenger;
   
   public class ConversationsDeps implements IConversationsDeps
   {
       
      
      private var var_140:HabboMessenger;
      
      public function ConversationsDeps(param1:HabboMessenger)
      {
         super();
         this.var_140 = param1;
      }
      
      public function getTabCount() : int
      {
         return this.var_140.messengerView.getTabCount();
      }
      
      public function getText(param1:String) : String
      {
         return this.var_140.getText(param1);
      }
      
      public function createConversation(param1:int) : Conversation
      {
         return this.var_140.createConversation(param1);
      }
      
      public function refresh(param1:Boolean) : void
      {
         this.var_140.messengerView.refresh();
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         this.var_140.messengerView.addMsgToView(param1,param2);
      }
   }
}
