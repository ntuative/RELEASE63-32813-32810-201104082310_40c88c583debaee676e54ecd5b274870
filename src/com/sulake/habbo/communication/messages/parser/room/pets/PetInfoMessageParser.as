package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1875:int;
      
      private var _name:String;
      
      private var var_1492:int;
      
      private var var_2545:int;
      
      private var var_2348:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_599:String;
      
      private var var_2542:int;
      
      private var var_2546:int;
      
      private var var_2544:int;
      
      private var var_2177:int;
      
      private var var_2543:int;
      
      private var _ownerName:String;
      
      private var var_536:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1875;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1492;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2545;
      }
      
      public function get experience() : int
      {
         return this.var_2348;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2542;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2546;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2544;
      }
      
      public function get respect() : int
      {
         return this.var_2177;
      }
      
      public function get ownerId() : int
      {
         return this.var_2543;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_536;
      }
      
      public function flush() : Boolean
      {
         this.var_1875 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1875 = param1.readInteger();
         this._name = param1.readString();
         this.var_1492 = param1.readInteger();
         this.var_2545 = param1.readInteger();
         this.var_2348 = param1.readInteger();
         this.var_2542 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2546 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2544 = param1.readInteger();
         this.var_599 = param1.readString();
         this.var_2177 = param1.readInteger();
         this.var_2543 = param1.readInteger();
         this.var_536 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
