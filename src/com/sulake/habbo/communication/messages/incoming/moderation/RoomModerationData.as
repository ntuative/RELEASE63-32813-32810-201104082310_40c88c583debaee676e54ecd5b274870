package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_2208:int;
      
      private var var_2785:Boolean;
      
      private var var_2543:int;
      
      private var _ownerName:String;
      
      private var var_108:RoomData;
      
      private var var_710:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_374 = param1.readInteger();
         this.var_2208 = param1.readInteger();
         this.var_2785 = param1.readBoolean();
         this.var_2543 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_108 = new RoomData(param1);
         this.var_710 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_108 != null)
         {
            this.var_108.dispose();
            this.var_108 = null;
         }
         if(this.var_710 != null)
         {
            this.var_710.dispose();
            this.var_710 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get userCount() : int
      {
         return this.var_2208;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2785;
      }
      
      public function get ownerId() : int
      {
         return this.var_2543;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_108;
      }
      
      public function get event() : RoomData
      {
         return this.var_710;
      }
   }
}
