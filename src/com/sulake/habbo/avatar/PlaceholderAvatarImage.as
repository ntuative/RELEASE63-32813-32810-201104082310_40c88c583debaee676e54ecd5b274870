package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_809:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1063)
         {
            _structure = null;
            _assets = null;
            var_240 = null;
            var_284 = null;
            var_599 = null;
            var_565 = null;
            var_329 = null;
            if(!var_1315 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_817 = null;
            var_1063 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_809[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_809[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_387:
               switch(_loc3_)
               {
                  case AvatarAction.const_886:
                  case AvatarAction.const_597:
                  case AvatarAction.const_421:
                  case AvatarAction.const_846:
                  case AvatarAction.const_422:
                  case AvatarAction.const_862:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_318:
            case AvatarAction.DANCE:
            case AvatarAction.WAVE:
            case AvatarAction.const_716:
            case AvatarAction.const_659:
            case AvatarAction.const_775:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
