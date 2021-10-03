package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_945:int = 1;
      
      public static const const_760:int = 2;
      
      public static const const_710:int = 3;
      
      public static const const_1129:int = 4;
      
      public static const const_880:int = 5;
      
      public static const const_1119:int = 6;
       
      
      private var _type:int;
      
      private var var_1239:int;
      
      private var var_2262:String;
      
      private var var_2455:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1239 = param2;
         this.var_2262 = param3;
         this.var_2455 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2262;
      }
      
      public function get time() : String
      {
         return this.var_2455;
      }
      
      public function get senderId() : int
      {
         return this.var_1239;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
