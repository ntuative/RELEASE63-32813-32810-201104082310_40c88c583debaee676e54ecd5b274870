package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_73:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_558:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_891:String = "HTE_TOOLBAR_RESIZED";
       
      
      private var var_768:String;
      
      private var var_548:String;
      
      private var var_1162:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_768 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_768;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_548 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_548;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1162 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1162;
      }
   }
}
