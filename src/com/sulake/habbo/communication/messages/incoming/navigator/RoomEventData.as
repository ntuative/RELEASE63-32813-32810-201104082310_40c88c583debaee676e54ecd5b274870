package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1161:Boolean;
      
      private var var_2244:int;
      
      private var var_2249:String;
      
      private var var_374:int;
      
      private var var_2246:int;
      
      private var var_2245:String;
      
      private var var_2248:String;
      
      private var var_2247:String;
      
      private var var_865:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_865 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1161 = false;
            return;
         }
         this.var_1161 = true;
         this.var_2244 = int(_loc2_);
         this.var_2249 = param1.readString();
         this.var_374 = int(param1.readString());
         this.var_2246 = param1.readInteger();
         this.var_2245 = param1.readString();
         this.var_2248 = param1.readString();
         this.var_2247 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_865.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2244;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2249;
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get eventType() : int
      {
         return this.var_2246;
      }
      
      public function get eventName() : String
      {
         return this.var_2245;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2248;
      }
      
      public function get creationTime() : String
      {
         return this.var_2247;
      }
      
      public function get tags() : Array
      {
         return this.var_865;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1161;
      }
   }
}
