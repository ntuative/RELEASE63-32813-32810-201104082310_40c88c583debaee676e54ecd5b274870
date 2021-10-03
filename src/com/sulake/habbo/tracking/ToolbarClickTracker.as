package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1323:IHabboTracking;
      
      private var var_1838:Boolean = false;
      
      private var var_2511:int = 0;
      
      private var var_1847:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1323 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1323 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1838 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2511 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1838)
         {
            return;
         }
         ++this.var_1847;
         if(this.var_1847 <= this.var_2511)
         {
            this.var_1323.track("toolbar",param1);
         }
      }
   }
}
