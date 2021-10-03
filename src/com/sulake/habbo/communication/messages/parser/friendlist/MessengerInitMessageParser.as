package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2605:int;
      
      private var var_2606:int;
      
      private var var_2607:int;
      
      private var var_2604:int;
      
      private var var_100:Array;
      
      private var var_217:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_100 = new Array();
         this.var_217 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2605 = param1.readInteger();
         this.var_2606 = param1.readInteger();
         this.var_2607 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_100.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_217.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2605;
      }
      
      public function get method_13() : int
      {
         return this.var_2606;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2607;
      }
      
      public function get categories() : Array
      {
         return this.var_100;
      }
      
      public function get friends() : Array
      {
         return this.var_217;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2604;
      }
   }
}
