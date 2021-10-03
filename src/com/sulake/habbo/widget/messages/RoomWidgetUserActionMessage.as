package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_770:String = "RWUAM_WHISPER_USER";
      
      public static const const_893:String = "RWUAM_IGNORE_USER";
      
      public static const const_892:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_602:String = "RWUAM_KICK_USER";
      
      public static const const_820:String = "RWUAM_BAN_USER";
      
      public static const const_863:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_798:String = "RWUAM_RESPECT_USER";
      
      public static const const_668:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_703:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_786:String = "RWUAM_START_TRADING";
      
      public static const const_658:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_583:String = "RWUAM_KICK_BOT";
      
      public static const const_702:String = "RWUAM_REPORT";
      
      public static const const_575:String = "RWUAM_PICKUP_PET";
      
      public static const const_1605:String = "RWUAM_TRAIN_PET";
      
      public static const const_561:String = " RWUAM_RESPECT_PET";
      
      public static const const_420:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_796:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
