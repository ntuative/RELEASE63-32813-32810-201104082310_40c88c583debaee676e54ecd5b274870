package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   
   public class GetGuestRoomResultMessageParser implements IMessageParser
   {
       
      
      private var var_2462:Boolean;
      
      private var var_2463:Boolean;
      
      private var var_2461:Boolean;
      
      private var _data:GuestRoomData;
      
      public function GetGuestRoomResultMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2462 = param1.readBoolean();
         this._data = new GuestRoomData(param1);
         this.var_2463 = param1.readBoolean();
         this.var_2461 = param1.readBoolean();
         return true;
      }
      
      public function get enterRoom() : Boolean
      {
         return this.var_2462;
      }
      
      public function get data() : GuestRoomData
      {
         return this._data;
      }
      
      public function get roomForward() : Boolean
      {
         return this.var_2463;
      }
      
      public function get staffPick() : Boolean
      {
         return this.var_2461;
      }
   }
}
