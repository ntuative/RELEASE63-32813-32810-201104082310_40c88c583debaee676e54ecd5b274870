package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1896:int = 1;
      
      public static const const_1935:int = 2;
      
      public static const const_1882:int = 3;
      
      public static const const_1937:int = 4;
      
      public static const const_1554:int = 5;
      
      public static const const_1822:int = 6;
      
      public static const const_1487:int = 7;
      
      public static const const_1749:int = 8;
      
      public static const const_1816:int = 9;
      
      public static const const_1466:int = 10;
      
      public static const const_1715:int = 11;
      
      public static const const_1510:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1692:int;
      
      private var var_1467:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1692 = param1.readInteger();
         this.var_1467 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1692;
      }
      
      public function get info() : String
      {
         return this.var_1467;
      }
   }
}
