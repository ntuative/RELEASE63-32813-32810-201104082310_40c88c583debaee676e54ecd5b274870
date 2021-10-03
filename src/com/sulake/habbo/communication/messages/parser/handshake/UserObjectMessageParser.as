package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_599:String;
      
      private var var_1048:String;
      
      private var var_2777:String;
      
      private var var_1620:String;
      
      private var var_2776:int;
      
      private var var_2775:String;
      
      private var var_2774:int;
      
      private var var_2773:int;
      
      private var var_2603:int;
      
      private var _respectLeft:int;
      
      private var var_793:int;
      
      private var var_2537:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_599 = param1.readString();
         this.var_1048 = param1.readString();
         this.var_2777 = param1.readString();
         this.var_1620 = param1.readString();
         this.var_2776 = param1.readInteger();
         this.var_2775 = param1.readString();
         this.var_2774 = param1.readInteger();
         this.var_2773 = param1.readInteger();
         this.var_2603 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_793 = param1.readInteger();
         this.var_2537 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function get sex() : String
      {
         return this.var_1048;
      }
      
      public function get customData() : String
      {
         return this.var_2777;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
      
      public function get tickets() : int
      {
         return this.var_2776;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2775;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2774;
      }
      
      public function get directMail() : int
      {
         return this.var_2773;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2603;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_793;
      }
      
      public function get identityId() : int
      {
         return this.var_2537;
      }
   }
}
