package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2336:Boolean;
      
      private var var_2337:int;
      
      private var var_1731:Array;
      
      private var var_833:Array;
      
      private var var_834:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2336;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2337;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1731;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_833;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_834;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1731 = [];
         this.var_833 = [];
         this.var_834 = [];
         this.var_2336 = param1.readBoolean();
         this.var_2337 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1731.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_833.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_834.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
