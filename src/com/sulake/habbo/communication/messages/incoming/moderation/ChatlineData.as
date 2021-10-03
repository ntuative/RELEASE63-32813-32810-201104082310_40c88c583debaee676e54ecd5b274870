package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2151:int;
      
      private var var_2148:int;
      
      private var var_2150:int;
      
      private var var_2149:String;
      
      private var var_1661:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2151 = param1.readInteger();
         this.var_2148 = param1.readInteger();
         this.var_2150 = param1.readInteger();
         this.var_2149 = param1.readString();
         this.var_1661 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2151;
      }
      
      public function get minute() : int
      {
         return this.var_2148;
      }
      
      public function get chatterId() : int
      {
         return this.var_2150;
      }
      
      public function get chatterName() : String
      {
         return this.var_2149;
      }
      
      public function get msg() : String
      {
         return this.var_1661;
      }
   }
}
