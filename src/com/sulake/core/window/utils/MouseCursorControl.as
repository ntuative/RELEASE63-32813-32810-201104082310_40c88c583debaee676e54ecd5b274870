package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_129:Stage;
      
      private static var var_296:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_727:Boolean = true;
      
      private static var var_110:DisplayObject;
      
      private static var var_1381:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_129 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_110)
            {
               var_129.removeChild(var_110);
               var_129.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_129.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_129.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_129.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_727 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_296;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_296 = param1;
         if(var_296)
         {
            if(var_110)
            {
               var_110.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_110)
         {
            var_110.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_727)
         {
            _loc1_ = var_1381[_type];
            if(_loc1_)
            {
               if(var_110)
               {
                  var_129.removeChild(var_110);
               }
               else
               {
                  var_129.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_129.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_129.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_129.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_110 = _loc1_;
               var_129.addChild(var_110);
            }
            else
            {
               if(var_110)
               {
                  var_129.removeChild(var_110);
                  var_129.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_129.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_129.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_129.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_110 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_330:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_1564:
                  case MouseCursorType.const_227:
                  case MouseCursorType.const_1465:
                  case MouseCursorType.const_1744:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_727 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1381[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_110)
         {
            var_110.x = param1.stageX - 2;
            var_110.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_296 = false;
               Mouse.show();
            }
            else
            {
               var_296 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_110 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_296 = false;
         }
      }
   }
}
