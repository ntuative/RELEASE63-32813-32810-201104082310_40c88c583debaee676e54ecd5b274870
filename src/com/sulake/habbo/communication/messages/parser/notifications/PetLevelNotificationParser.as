package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1875:int;
      
      private var var_2693:String;
      
      private var var_1492:int;
      
      private var var_1142:int;
      
      private var var_1791:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1875 = param1.readInteger();
         this.var_2693 = param1.readString();
         this.var_1492 = param1.readInteger();
         this.var_1142 = param1.readInteger();
         this.var_1791 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1875;
      }
      
      public function get petName() : String
      {
         return this.var_2693;
      }
      
      public function get level() : int
      {
         return this.var_1492;
      }
      
      public function get petType() : int
      {
         return this.var_1142;
      }
      
      public function get breed() : int
      {
         return this.var_1791;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
