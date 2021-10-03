package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1202:int = 1;
      
      public static const const_793:int = 2;
      
      public static const const_916:int = 3;
      
      public static const const_1663:int = 4;
       
      
      private var _index:int;
      
      private var var_2212:String;
      
      private var var_2209:String;
      
      private var var_2207:Boolean;
      
      private var var_2210:String;
      
      private var var_915:String;
      
      private var var_2211:int;
      
      private var var_2208:int;
      
      private var _type:int;
      
      private var var_2118:String;
      
      private var var_889:GuestRoomData;
      
      private var var_890:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2212 = param1.readString();
         this.var_2209 = param1.readString();
         this.var_2207 = param1.readInteger() == 1;
         this.var_2210 = param1.readString();
         this.var_915 = param1.readString();
         this.var_2211 = param1.readInteger();
         this.var_2208 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1202)
         {
            this.var_2118 = param1.readString();
         }
         else if(this._type == const_916)
         {
            this.var_890 = new PublicRoomData(param1);
         }
         else if(this._type == const_793)
         {
            this.var_889 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_889 != null)
         {
            this.var_889.dispose();
            this.var_889 = null;
         }
         if(this.var_890 != null)
         {
            this.var_890.dispose();
            this.var_890 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2212;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2209;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2207;
      }
      
      public function get picText() : String
      {
         return this.var_2210;
      }
      
      public function get picRef() : String
      {
         return this.var_915;
      }
      
      public function get folderId() : int
      {
         return this.var_2211;
      }
      
      public function get tag() : String
      {
         return this.var_2118;
      }
      
      public function get userCount() : int
      {
         return this.var_2208;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_889;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_890;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1202)
         {
            return 0;
         }
         if(this.type == const_793)
         {
            return this.var_889.maxUserCount;
         }
         if(this.type == const_916)
         {
            return this.var_890.maxUsers;
         }
         return 0;
      }
   }
}
