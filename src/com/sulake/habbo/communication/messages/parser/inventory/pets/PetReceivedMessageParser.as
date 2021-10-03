package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1689:Boolean;
      
      private var var_895:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1689 = param1.readBoolean();
         this.var_895 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1689 + ", " + this.var_895.id + ", " + this.var_895.name + ", " + this.var_895.type + ", " + this.var_895.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1689;
      }
      
      public function get pet() : PetData
      {
         return this.var_895;
      }
   }
}
