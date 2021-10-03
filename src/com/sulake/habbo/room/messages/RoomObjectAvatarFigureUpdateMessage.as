package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_599:String;
      
      private var var_2482:String;
      
      private var var_929:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_599 = param1;
         this.var_929 = param2;
         this.var_2482 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_599;
      }
      
      public function get race() : String
      {
         return this.var_2482;
      }
      
      public function get gender() : String
      {
         return this.var_929;
      }
   }
}
