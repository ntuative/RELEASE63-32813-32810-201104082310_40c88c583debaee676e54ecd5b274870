package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_710:Boolean;
      
      private var var_1006:String;
      
      private var _ownerName:String;
      
      private var var_2224:int;
      
      private var var_2208:int;
      
      private var var_2833:int;
      
      private var var_1685:String;
      
      private var var_2836:int;
      
      private var var_2689:Boolean;
      
      private var var_708:int;
      
      private var var_1397:int;
      
      private var var_2834:String;
      
      private var var_865:Array;
      
      private var var_2835:RoomThumbnailData;
      
      private var var_2225:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_865 = new Array();
         super();
         this.var_374 = param1.readInteger();
         this.var_710 = param1.readBoolean();
         this.var_1006 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2224 = param1.readInteger();
         this.var_2208 = param1.readInteger();
         this.var_2833 = param1.readInteger();
         this.var_1685 = param1.readString();
         this.var_2836 = param1.readInteger();
         this.var_2689 = param1.readBoolean();
         this.var_708 = param1.readInteger();
         this.var_1397 = param1.readInteger();
         this.var_2834 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_865.push(_loc4_);
            _loc3_++;
         }
         this.var_2835 = new RoomThumbnailData(param1);
         this.var_2225 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_865 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get event() : Boolean
      {
         return this.var_710;
      }
      
      public function get roomName() : String
      {
         return this.var_1006;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2224;
      }
      
      public function get userCount() : int
      {
         return this.var_2208;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2833;
      }
      
      public function get description() : String
      {
         return this.var_1685;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2836;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2689;
      }
      
      public function get score() : int
      {
         return this.var_708;
      }
      
      public function get categoryId() : int
      {
         return this.var_1397;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2834;
      }
      
      public function get tags() : Array
      {
         return this.var_865;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2835;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2225;
      }
   }
}
