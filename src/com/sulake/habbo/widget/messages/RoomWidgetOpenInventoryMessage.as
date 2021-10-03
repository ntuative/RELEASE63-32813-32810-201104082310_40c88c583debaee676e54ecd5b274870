package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_897:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1048:String = "inventory_effects";
      
      public static const const_1149:String = "inventory_badges";
      
      public static const const_1604:String = "inventory_clothes";
      
      public static const const_1514:String = "inventory_furniture";
       
      
      private var var_2797:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_897);
         this.var_2797 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2797;
      }
   }
}
