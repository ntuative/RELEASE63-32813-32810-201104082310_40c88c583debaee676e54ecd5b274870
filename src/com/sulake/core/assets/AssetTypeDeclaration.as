package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2449:String;
      
      private var var_2448:Class;
      
      private var var_2447:Class;
      
      private var var_1811:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2449 = param1;
         this.var_2448 = param2;
         this.var_2447 = param3;
         if(rest == null)
         {
            this.var_1811 = new Array();
         }
         else
         {
            this.var_1811 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2449;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2448;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2447;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1811;
      }
   }
}
