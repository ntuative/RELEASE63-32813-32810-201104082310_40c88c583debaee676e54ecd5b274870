package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_480:String = "RORMUM_ADD_MASK";
      
      public static const const_650:String = "RORMUM_ADD_MASK";
      
      public static const const_1644:String = "door";
      
      public static const const_519:String = "window";
      
      public static const const_257:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2294:String = "";
      
      private var var_2292:String = "";
      
      private var var_2293:Vector3d = null;
      
      private var var_2295:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2294 = param2;
         this.var_2292 = param3;
         if(param4 != null)
         {
            this.var_2293 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2295 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2294;
      }
      
      public function get maskType() : String
      {
         return this.var_2292;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2293;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2295;
      }
   }
}
