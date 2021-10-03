package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1786:int;
      
      private var var_2788:String;
      
      private var var_929:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1786 = param1.readInteger();
         this.var_2788 = param1.readString();
         this.var_929 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1786;
      }
      
      public function get figureString() : String
      {
         return this.var_2788;
      }
      
      public function get gender() : String
      {
         return this.var_929;
      }
   }
}
