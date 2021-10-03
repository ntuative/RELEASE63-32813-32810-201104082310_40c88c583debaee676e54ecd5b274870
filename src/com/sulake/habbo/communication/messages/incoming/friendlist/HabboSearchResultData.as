package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2440:int;
      
      private var var_1618:String;
      
      private var var_2134:String;
      
      private var var_2438:Boolean;
      
      private var var_2441:Boolean;
      
      private var var_2442:int;
      
      private var var_2133:String;
      
      private var var_2439:String;
      
      private var var_1620:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2440 = param1.readInteger();
         this.var_1618 = param1.readString();
         this.var_2134 = param1.readString();
         this.var_2438 = param1.readBoolean();
         this.var_2441 = param1.readBoolean();
         param1.readString();
         this.var_2442 = param1.readInteger();
         this.var_2133 = param1.readString();
         this.var_2439 = param1.readString();
         this.var_1620 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2440;
      }
      
      public function get avatarName() : String
      {
         return this.var_1618;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2134;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2438;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2441;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2442;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2133;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2439;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
   }
}
