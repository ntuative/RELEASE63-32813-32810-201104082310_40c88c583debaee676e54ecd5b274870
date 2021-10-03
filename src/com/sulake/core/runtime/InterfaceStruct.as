package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1424:IID;
      
      private var var_1793:String;
      
      private var var_102:IUnknown;
      
      private var var_752:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1424 = param1;
         this.var_1793 = getQualifiedClassName(this.var_1424);
         this.var_102 = param2;
         this.var_752 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1424;
      }
      
      public function get iis() : String
      {
         return this.var_1793;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_102;
      }
      
      public function get references() : uint
      {
         return this.var_752;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_102 == null;
      }
      
      public function dispose() : void
      {
         this.var_1424 = null;
         this.var_1793 = null;
         this.var_102 = null;
         this.var_752 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_752;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_752) : uint(0);
      }
   }
}
