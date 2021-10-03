package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_925;
         param1["bitmap"] = const_661;
         param1["border"] = const_859;
         param1["border_notify"] = const_1697;
         param1["button"] = const_494;
         param1["button_thick"] = const_749;
         param1["button_icon"] = const_1637;
         param1["button_group_left"] = const_722;
         param1["button_group_center"] = const_787;
         param1["button_group_right"] = const_693;
         param1["canvas"] = const_706;
         param1["checkbox"] = const_750;
         param1["closebutton"] = const_1064;
         param1["container"] = const_362;
         param1["container_button"] = const_866;
         param1["display_object_wrapper"] = const_797;
         param1["dropmenu"] = const_552;
         param1["dropmenu_item"] = const_589;
         param1["frame"] = const_384;
         param1["frame_notify"] = const_1683;
         param1["header"] = const_813;
         param1["html"] = const_1065;
         param1["icon"] = const_1086;
         param1["itemgrid"] = const_1211;
         param1["itemgrid_horizontal"] = const_609;
         param1["itemgrid_vertical"] = const_738;
         param1["itemlist"] = const_1235;
         param1["itemlist_horizontal"] = const_363;
         param1["itemlist_vertical"] = const_408;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1612;
         param1["menu"] = const_1619;
         param1["menu_item"] = const_1503;
         param1["submenu"] = const_1147;
         param1["minimizebox"] = const_1636;
         param1["notify"] = const_1508;
         param1["null"] = const_917;
         param1["password"] = const_734;
         param1["radiobutton"] = const_728;
         param1["region"] = const_452;
         param1["restorebox"] = const_1546;
         param1["scaler"] = const_518;
         param1["scaler_horizontal"] = const_1633;
         param1["scaler_vertical"] = const_1640;
         param1["scrollbar_horizontal"] = const_554;
         param1["scrollbar_vertical"] = const_869;
         param1["scrollbar_slider_button_up"] = const_1099;
         param1["scrollbar_slider_button_down"] = const_1106;
         param1["scrollbar_slider_button_left"] = const_1072;
         param1["scrollbar_slider_button_right"] = const_1206;
         param1["scrollbar_slider_bar_horizontal"] = const_1033;
         param1["scrollbar_slider_bar_vertical"] = const_1241;
         param1["scrollbar_slider_track_horizontal"] = const_1234;
         param1["scrollbar_slider_track_vertical"] = const_1061;
         param1["scrollable_itemlist"] = const_1713;
         param1["scrollable_itemlist_vertical"] = const_500;
         param1["scrollable_itemlist_horizontal"] = const_1063;
         param1["selector"] = const_919;
         param1["selector_list"] = const_943;
         param1["submenu"] = const_1147;
         param1["tab_button"] = const_679;
         param1["tab_container_button"] = const_1117;
         param1["tab_context"] = const_444;
         param1["tab_content"] = const_1157;
         param1["tab_selector"] = const_935;
         param1["text"] = const_453;
         param1["input"] = const_832;
         param1["toolbar"] = const_1494;
         param1["tooltip"] = const_400;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
