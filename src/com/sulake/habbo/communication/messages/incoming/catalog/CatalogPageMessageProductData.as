package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_72:String = "i";
      
      public static const const_80:String = "s";
      
      public static const const_211:String = "e";
       
      
      private var var_1387:String;
      
      private var var_2740:int;
      
      private var var_1388:String;
      
      private var var_1389:int;
      
      private var var_1715:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1387 = param1.readString();
         this.var_2740 = param1.readInteger();
         this.var_1388 = param1.readString();
         this.var_1389 = param1.readInteger();
         this.var_1715 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1387;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2740;
      }
      
      public function get extraParam() : String
      {
         return this.var_1388;
      }
      
      public function get productCount() : int
      {
         return this.var_1389;
      }
      
      public function get expiration() : int
      {
         return this.var_1715;
      }
   }
}
