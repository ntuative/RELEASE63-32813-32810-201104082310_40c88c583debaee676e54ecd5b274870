package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_593:uint = 0;
      
      public static const const_1645:uint = 1;
      
      public static const const_1879:int = 0;
      
      public static const const_1866:int = 1;
      
      public static const const_1873:int = 2;
      
      public static const const_1842:int = 3;
      
      public static const const_1585:int = 4;
      
      public static const const_382:int = 5;
      
      public static var var_395:IEventQueue;
      
      private static var var_583:IEventProcessor;
      
      private static var var_1654:uint = const_593;
      
      private static var stage:Stage;
      
      private static var var_149:IWindowRenderer;
       
      
      private var var_2190:EventProcessorState;
      
      private var var_2191:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_123:DisplayObjectContainer;
      
      protected var var_2928:Boolean = true;
      
      protected var var_1306:Error;
      
      protected var var_2087:int = -1;
      
      protected var var_1305:IInternalWindowServices;
      
      protected var var_1582:IWindowParser;
      
      protected var var_2866:IWindowFactory;
      
      protected var var_81:IDesktopWindow;
      
      protected var var_1581:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_566:Boolean = false;
      
      private var var_2192:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_149 = param2;
         this._localization = param4;
         this.var_123 = param5;
         this.var_1305 = new ServiceManager(this,param5);
         this.var_2866 = param3;
         this.var_1582 = new WindowParser(this);
         this.var_2191 = param7;
         if(!stage)
         {
            if(this.var_123 is Stage)
            {
               stage = this.var_123 as Stage;
            }
            else if(this.var_123.stage)
            {
               stage = this.var_123.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_81 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_81.limits.maxWidth = param6.width;
         this.var_81.limits.maxHeight = param6.height;
         this.var_123.addChild(this.var_81.getDisplayObject());
         this.var_123.doubleClickEnabled = true;
         this.var_123.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2190 = new EventProcessorState(var_149,this.var_81,this.var_81,null,this.var_2191);
         inputMode = const_593;
         this.var_1581 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1654;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_395)
         {
            if(var_395 is IDisposable)
            {
               IDisposable(var_395).dispose();
            }
         }
         if(var_583)
         {
            if(var_583 is IDisposable)
            {
               IDisposable(var_583).dispose();
            }
         }
         switch(value)
         {
            case const_593:
               var_395 = new MouseEventQueue(stage);
               var_583 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1645:
               var_395 = new TabletEventQueue(stage);
               var_583 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_593;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_123.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_123.removeChild(IGraphicContextHost(this.var_81).getGraphicContext(true) as DisplayObject);
            this.var_81.destroy();
            this.var_81 = null;
            this.var_1581.destroy();
            this.var_1581 = null;
            if(this.var_1305 is IDisposable)
            {
               IDisposable(this.var_1305).dispose();
            }
            this.var_1305 = null;
            this.var_1582.dispose();
            this.var_1582 = null;
            var_149 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1306;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2087;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1306 = param2;
         this.var_2087 = param1;
         if(this.var_2928)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1306 = null;
         this.var_2087 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1305;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1582;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2866;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_81;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_81.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1585,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1581;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_81,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_81)
         {
            this.var_81 = null;
         }
         if(param1.state != WindowState.const_485)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_149.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_566 = true;
         if(this.var_1306)
         {
            throw this.var_1306;
         }
         var_583.process(this.var_2190,var_395);
         this.var_566 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2192 = true;
         var_149.update(param1);
         this.var_2192 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_81 != null && !this.var_81.disposed)
         {
            if(this.var_123 is Stage)
            {
               this.var_81.limits.maxWidth = Stage(this.var_123).stageWidth;
               this.var_81.limits.maxHeight = Stage(this.var_123).stageHeight;
               this.var_81.width = Stage(this.var_123).stageWidth;
               this.var_81.height = Stage(this.var_123).stageHeight;
            }
            else
            {
               this.var_81.limits.maxWidth = this.var_123.width;
               this.var_81.limits.maxHeight = this.var_123.height;
               this.var_81.width = this.var_123.width;
               this.var_81.height = this.var_123.height;
            }
         }
      }
   }
}
