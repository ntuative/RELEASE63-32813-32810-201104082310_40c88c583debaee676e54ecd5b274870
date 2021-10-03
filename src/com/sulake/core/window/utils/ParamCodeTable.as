package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_208;
         param1["bound_to_parent_rect"] = const_100;
         param1["child_window"] = const_1197;
         param1["embedded_controller"] = const_1210;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_915;
         param1["mouse_dragging_target"] = const_264;
         param1["mouse_dragging_trigger"] = const_399;
         param1["mouse_scaling_target"] = const_313;
         param1["mouse_scaling_trigger"] = const_511;
         param1["horizontal_mouse_scaling_trigger"] = const_280;
         param1["vertical_mouse_scaling_trigger"] = const_224;
         param1["observe_parent_input_events"] = const_1150;
         param1["optimize_region_to_layout_size"] = const_545;
         param1["parent_window"] = const_1248;
         param1["relative_horizontal_scale_center"] = const_200;
         param1["relative_horizontal_scale_fixed"] = const_130;
         param1["relative_horizontal_scale_move"] = const_424;
         param1["relative_horizontal_scale_strech"] = const_377;
         param1["relative_scale_center"] = const_1035;
         param1["relative_scale_fixed"] = const_683;
         param1["relative_scale_move"] = const_1088;
         param1["relative_scale_strech"] = const_1231;
         param1["relative_vertical_scale_center"] = const_179;
         param1["relative_vertical_scale_fixed"] = const_129;
         param1["relative_vertical_scale_move"] = const_244;
         param1["relative_vertical_scale_strech"] = const_288;
         param1["on_resize_align_left"] = const_737;
         param1["on_resize_align_right"] = const_582;
         param1["on_resize_align_center"] = const_508;
         param1["on_resize_align_top"] = const_766;
         param1["on_resize_align_bottom"] = const_461;
         param1["on_resize_align_middle"] = const_549;
         param1["on_accommodate_align_left"] = const_1208;
         param1["on_accommodate_align_right"] = const_505;
         param1["on_accommodate_align_center"] = const_726;
         param1["on_accommodate_align_top"] = const_1126;
         param1["on_accommodate_align_bottom"] = const_555;
         param1["on_accommodate_align_middle"] = const_792;
         param1["route_input_events_to_parent"] = const_568;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1055;
         param1["scalable_with_mouse"] = const_1246;
         param1["reflect_horizontal_resize_to_parent"] = const_510;
         param1["reflect_vertical_resize_to_parent"] = const_570;
         param1["reflect_resize_to_parent"] = const_311;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1209;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
