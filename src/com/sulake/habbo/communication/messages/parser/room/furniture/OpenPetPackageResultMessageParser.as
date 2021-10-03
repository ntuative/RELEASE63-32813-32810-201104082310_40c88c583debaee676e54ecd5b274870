package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_343:int = 0;
      
      private var var_1746:int = 0;
      
      private var var_1745:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_343;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1746;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1745;
      }
      
      public function flush() : Boolean
      {
         this.var_343 = 0;
         this.var_1746 = 0;
         this.var_1745 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_343 = param1.readInteger();
         this.var_1746 = param1.readInteger();
         this.var_1745 = param1.readString();
         return true;
      }
   }
}
