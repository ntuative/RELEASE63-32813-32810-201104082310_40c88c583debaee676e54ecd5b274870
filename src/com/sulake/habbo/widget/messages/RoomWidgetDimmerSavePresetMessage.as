package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_848:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2768:int;
      
      private var var_2770:int;
      
      private var _color:uint;
      
      private var var_1207:int;
      
      private var var_2769:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_848);
         this.var_2768 = param1;
         this.var_2770 = param2;
         this._color = param3;
         this.var_1207 = param4;
         this.var_2769 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2768;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2770;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1207;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2769;
      }
   }
}
