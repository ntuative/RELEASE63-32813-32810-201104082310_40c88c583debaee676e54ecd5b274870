package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1702:String = "WE_DESTROY";
      
      public static const const_345:String = "WE_DESTROYED";
      
      public static const const_1565:String = "WE_OPEN";
      
      public static const const_1624:String = "WE_OPENED";
      
      public static const const_1678:String = "WE_CLOSE";
      
      public static const const_1512:String = "WE_CLOSED";
      
      public static const const_1579:String = "WE_FOCUS";
      
      public static const const_347:String = "WE_FOCUSED";
      
      public static const const_1621:String = "WE_UNFOCUS";
      
      public static const const_1641:String = "WE_UNFOCUSED";
      
      public static const const_1548:String = "WE_ACTIVATE";
      
      public static const const_524:String = "WE_ACTIVATED";
      
      public static const const_1673:String = "WE_DEACTIVATE";
      
      public static const const_491:String = "WE_DEACTIVATED";
      
      public static const const_332:String = "WE_SELECT";
      
      public static const const_56:String = "WE_SELECTED";
      
      public static const const_586:String = "WE_UNSELECT";
      
      public static const const_475:String = "WE_UNSELECTED";
      
      public static const const_1507:String = "WE_LOCK";
      
      public static const const_1680:String = "WE_LOCKED";
      
      public static const const_1672:String = "WE_UNLOCK";
      
      public static const const_1705:String = "WE_UNLOCKED";
      
      public static const const_877:String = "WE_ENABLE";
      
      public static const const_267:String = "WE_ENABLED";
      
      public static const const_931:String = "WE_DISABLE";
      
      public static const const_206:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_233:String = "WE_RELOCATED";
      
      public static const const_1104:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_1719:String = "WE_MINIMIZE";
      
      public static const const_1587:String = "WE_MINIMIZED";
      
      public static const const_1488:String = "WE_MAXIMIZE";
      
      public static const const_1533:String = "WE_MAXIMIZED";
      
      public static const const_1602:String = "WE_RESTORE";
      
      public static const const_1723:String = "WE_RESTORED";
      
      public static const const_477:String = "WE_CHILD_ADDED";
      
      public static const const_380:String = "WE_CHILD_REMOVED";
      
      public static const const_186:String = "WE_CHILD_RELOCATED";
      
      public static const const_155:String = "WE_CHILD_RESIZED";
      
      public static const const_319:String = "WE_CHILD_ACTIVATED";
      
      public static const const_773:String = "WE_PARENT_ADDED";
      
      public static const const_1459:String = "WE_PARENT_REMOVED";
      
      public static const const_1504:String = "WE_PARENT_RELOCATED";
      
      public static const const_1047:String = "WE_PARENT_RESIZED";
      
      public static const const_1196:String = "WE_PARENT_ACTIVATED";
      
      public static const const_172:String = "WE_OK";
      
      public static const const_599:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const const_606:String = "WE_SCROLL";
      
      public static const const_170:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_697:IWindow;
      
      protected var var_1068:Boolean;
      
      protected var var_472:Boolean;
      
      protected var var_567:Boolean;
      
      protected var var_696:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_697 = param3;
         _loc5_.var_472 = param4;
         _loc5_.var_567 = false;
         _loc5_.var_696 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_697;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_472;
      }
      
      public function recycle() : void
      {
         if(this.var_567)
         {
            throw new Error("Event already recycled!");
         }
         this.var_697 = null;
         this._window = null;
         this.var_567 = true;
         this.var_1068 = false;
         this.var_696.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1068;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1068 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1068;
      }
      
      public function stopPropagation() : void
      {
         this.var_1068 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1068 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_472 + " window: " + this._window + " }";
      }
   }
}
