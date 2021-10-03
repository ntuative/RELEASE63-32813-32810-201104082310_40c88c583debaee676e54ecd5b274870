package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_929:int;
      
      private var var_702:Boolean;
      
      private var var_1830:Boolean;
      
      private var var_599:String;
      
      private var var_1397:int;
      
      private var var_1726:String;
      
      private var var_1619:String;
      
      private var var_1620:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_929 = param1.readInteger();
         this.var_702 = param1.readBoolean();
         this.var_1830 = param1.readBoolean();
         this.var_599 = param1.readString();
         this.var_1397 = param1.readInteger();
         this.var_1726 = param1.readString();
         this.var_1619 = param1.readString();
         this.var_1620 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_929;
      }
      
      public function get online() : Boolean
      {
         return this.var_702;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1830;
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function get categoryId() : int
      {
         return this.var_1397;
      }
      
      public function get motto() : String
      {
         return this.var_1726;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1619;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
   }
}
