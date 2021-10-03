package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1673:int = 0;
      
      private var var_1672:int = 0;
      
      private var var_1737:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1673;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1672;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1737;
      }
      
      public function flush() : Boolean
      {
         this.var_1673 = 0;
         this.var_1672 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1673 = param1.readInteger();
         this.var_1672 = param1.readInteger();
         this.var_1737 = param1.readInteger();
         return true;
      }
   }
}
