package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_343:int;
      
      private var var_2358:int;
      
      private var var_1880:String;
      
      private var _x:int = 0;
      
      private var var_153:int = 0;
      
      private var var_340:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_343 = param1;
         this.var_2358 = param2;
         this.var_1880 = param3;
         this._x = param4;
         this.var_153 = param5;
         this.var_340 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2358)
         {
            case RoomObjectCategoryEnum.const_26:
               return [this.var_343 + " " + this._x + " " + this.var_153 + " " + this.var_340];
            case RoomObjectCategoryEnum.const_25:
               return [this.var_343 + " " + this.var_1880];
            default:
               return [];
         }
      }
   }
}
