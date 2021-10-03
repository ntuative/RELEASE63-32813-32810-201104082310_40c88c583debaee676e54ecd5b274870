package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1423:Boolean = false;
      
      private var var_1769:int;
      
      private var var_1731:Array;
      
      private var var_833:Array;
      
      private var var_834:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1423 = _loc2_.isWrappingEnabled;
         this.var_1769 = _loc2_.wrappingPrice;
         this.var_1731 = _loc2_.stuffTypes;
         this.var_833 = _loc2_.boxTypes;
         this.var_834 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1423;
      }
      
      public function get price() : int
      {
         return this.var_1769;
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
   }
}
