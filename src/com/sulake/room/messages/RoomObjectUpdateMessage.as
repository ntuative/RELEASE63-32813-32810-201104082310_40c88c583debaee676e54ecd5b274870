package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_90:IVector3d;
      
      protected var var_340:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         this.var_90 = param1;
         this.var_340 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_90;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_340;
      }
   }
}
