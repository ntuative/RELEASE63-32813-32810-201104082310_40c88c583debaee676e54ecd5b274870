package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1789:int;
      
      private var var_2415:String;
      
      private var var_296:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1789 = param1.readInteger();
         this.var_2415 = param1.readString();
         this.var_296 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1789;
      }
      
      public function get nodeName() : String
      {
         return this.var_2415;
      }
      
      public function get visible() : Boolean
      {
         return this.var_296;
      }
   }
}
