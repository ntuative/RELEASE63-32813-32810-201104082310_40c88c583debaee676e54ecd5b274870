package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class RemoveBuddyMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_951:Array;
      
      public function RemoveBuddyMessageComposer()
      {
         this.var_951 = new Array();
         super();
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_951.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_951.length)
         {
            _loc1_.push(this.var_951[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function addRemovedFriend(param1:int) : void
      {
         this.var_951.push(param1);
      }
      
      public function dispose() : void
      {
         this.var_951 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
