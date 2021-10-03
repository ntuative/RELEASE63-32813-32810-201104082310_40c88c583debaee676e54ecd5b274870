package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2768:int;
      
      private var var_2770:int;
      
      private var var_2844:String;
      
      private var var_2842:int;
      
      private var var_2843:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2768 = param1;
         this.var_2770 = param2;
         this.var_2844 = param3;
         this.var_2842 = param4;
         this.var_2843 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2768,this.var_2770,this.var_2844,this.var_2842,int(this.var_2843)];
      }
      
      public function dispose() : void
      {
      }
   }
}
