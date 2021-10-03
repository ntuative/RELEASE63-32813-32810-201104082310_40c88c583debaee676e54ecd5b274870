package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2919:uint;
      
      private var var_145:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_273:IWindowContext;
      
      private var var_1253:IMouseDraggingService;
      
      private var var_1252:IMouseScalingService;
      
      private var var_1254:IMouseListenerService;
      
      private var var_1255:IFocusManagerService;
      
      private var var_1251:IToolTipAgentService;
      
      private var var_1256:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2919 = 0;
         this.var_145 = param2;
         this.var_273 = param1;
         this.var_1253 = new WindowMouseDragger(param2);
         this.var_1252 = new WindowMouseScaler(param2);
         this.var_1254 = new WindowMouseListener(param2);
         this.var_1255 = new FocusManager(param2);
         this.var_1251 = new WindowToolTipAgent(param2);
         this.var_1256 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1253 != null)
         {
            this.var_1253.dispose();
            this.var_1253 = null;
         }
         if(this.var_1252 != null)
         {
            this.var_1252.dispose();
            this.var_1252 = null;
         }
         if(this.var_1254 != null)
         {
            this.var_1254.dispose();
            this.var_1254 = null;
         }
         if(this.var_1255 != null)
         {
            this.var_1255.dispose();
            this.var_1255 = null;
         }
         if(this.var_1251 != null)
         {
            this.var_1251.dispose();
            this.var_1251 = null;
         }
         if(this.var_1256 != null)
         {
            this.var_1256.dispose();
            this.var_1256 = null;
         }
         this.var_145 = null;
         this.var_273 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1253;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1252;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1254;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1255;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1251;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1256;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
