package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1423:Boolean;
      
      private var var_2279:int;
      
      private var var_1697:int;
      
      private var var_1696:int;
      
      private var var_2283:int;
      
      private var var_2282:int;
      
      private var var_2285:int;
      
      private var var_2280:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1423;
      }
      
      public function get commission() : int
      {
         return this.var_2279;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1697;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1696;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2282;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2283;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2285;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2280;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1423 = param1.readBoolean();
         this.var_2279 = param1.readInteger();
         this.var_1697 = param1.readInteger();
         this.var_1696 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_2285 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         return true;
      }
   }
}
