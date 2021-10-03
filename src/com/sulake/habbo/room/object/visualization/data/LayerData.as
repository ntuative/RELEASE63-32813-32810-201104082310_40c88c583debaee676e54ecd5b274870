package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_684:String = "";
      
      public static const const_369:int = 0;
      
      public static const const_590:int = 255;
      
      public static const const_648:Boolean = false;
      
      public static const const_479:int = 0;
      
      public static const const_488:int = 0;
      
      public static const const_366:int = 0;
      
      public static const const_1225:int = 1;
      
      public static const const_1228:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2118:String = "";
      
      private var var_1897:int = 0;
      
      private var var_2393:int = 255;
      
      private var var_2711:Boolean = false;
      
      private var var_2709:int = 0;
      
      private var var_2708:int = 0;
      
      private var var_2710:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2118 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2118;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1897 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1897;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2393 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2393;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2711 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2711;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2709 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2709;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2708 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2708;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2710 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2710;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
