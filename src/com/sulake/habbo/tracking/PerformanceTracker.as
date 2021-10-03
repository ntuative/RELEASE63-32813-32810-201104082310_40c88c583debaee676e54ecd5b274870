package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_186:IHabboConfigurationManager = null;
      
      private var var_570:int = 0;
      
      private var var_485:Number = 0;
      
      private var var_2894:Array;
      
      private var var_1361:String = "";
      
      private var var_1649:String = "";
      
      private var var_2184:String = "";
      
      private var var_2559:String = "";
      
      private var var_1885:Boolean = false;
      
      private var var_1650:GarbageMonitor = null;
      
      private var var_1363:int = 0;
      
      private var var_2181:Boolean;
      
      private var var_1648:int = 1000;
      
      private var var_1362:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1651:int = 0;
      
      private var var_1652:int = 10;
      
      private var var_1360:int = 0;
      
      private var var_2185:Number = 0.15;
      
      private var var_2182:Boolean = true;
      
      private var var_2183:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2894 = [];
         super();
         this.var_1649 = Capabilities.version;
         this.var_2184 = Capabilities.os;
         this.var_1885 = Capabilities.isDebugger;
         this.var_1361 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1361 == null)
         {
            this.var_1361 = "unknown";
         }
         this.var_1650 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1651 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1649;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_485;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1648 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1652 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_186 = param1;
         this._reportInterval = int(this.var_186.getKey("performancetest.interval","60"));
         this.var_1648 = int(this.var_186.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1652 = int(this.var_186.getKey("performancetest.reportlimit","10"));
         this.var_2185 = Number(this.var_186.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2182 = Boolean(int(this.var_186.getKey("performancetest.distribution.enabled","1")));
         this.var_2181 = Boolean(this.var_186.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1650.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1650.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2181)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1363;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1648)
         {
            ++this.var_1362;
            _loc3_ = true;
         }
         else
         {
            ++this.var_570;
            if(this.var_570 <= 1)
            {
               this.var_485 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_570);
               this.var_485 = this.var_485 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1651 > this._reportInterval * 1000 && this.var_1360 < this.var_1652)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_485);
            _loc6_ = true;
            if(this.var_2182 && this.var_1360 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2183,this.var_485);
               if(_loc7_ < this.var_2185)
               {
                  _loc6_ = false;
               }
            }
            this.var_1651 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2183 = this.var_485;
               if(this.sendReport(param2))
               {
                  ++this.var_1360;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1361,this.var_1649,this.var_2184,this.var_2559,this.var_1885,_loc5_,_loc4_,this.var_1363,this.var_485,this.var_1362);
            this._connection.send(_loc2_);
            this.var_1363 = 0;
            this.var_485 = 0;
            this.var_570 = 0;
            this.var_1362 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
