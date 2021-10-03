package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1651:int;
      
      private var var_2683:int;
      
      private var var_840:int;
      
      private var var_485:Number;
      
      private var var_2684:Boolean;
      
      private var var_2682:int;
      
      private var var_1935:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_485);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2683 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2682 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2684 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_840;
         if(this.var_840 == 1)
         {
            this.var_485 = param1;
            this.var_1651 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_840);
            this.var_485 = this.var_485 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2684 && param3 - this.var_1651 >= this.var_2683)
         {
            this.var_840 = 0;
            if(this.var_1935 < this.var_2682)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1935;
               this.var_1651 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
