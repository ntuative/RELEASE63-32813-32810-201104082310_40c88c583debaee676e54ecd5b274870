package com.sulake.habbo.widget.events
{
   public class RoomWidgetSongUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_401:String = "RWSUE_PLAYING_CHANGED";
      
      public static const const_395:String = "RWSUE_DATA_RECEIVED";
       
      
      private var var_1674:int;
      
      private var _songName:String;
      
      private var var_2221:String;
      
      public function RoomWidgetSongUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_1674 = param2;
         this._songName = param3;
         this.var_2221 = param4;
      }
      
      public function get songId() : int
      {
         return this.var_1674;
      }
      
      public function get songName() : String
      {
         return this._songName;
      }
      
      public function get songAuthor() : String
      {
         return this.var_2221;
      }
   }
}
