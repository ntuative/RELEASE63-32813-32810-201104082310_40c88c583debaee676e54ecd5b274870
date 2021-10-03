package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class PendingImage implements IDisposable
   {
       
      
      private var var_86:HabboQuestEngine;
      
      private var var_661:IBitmapWrapperWindow;
      
      private var var_2761:Boolean;
      
      public function PendingImage(param1:HabboQuestEngine, param2:IBitmapWrapperWindow, param3:String, param4:Boolean = false)
      {
         super();
         this.var_86 = param1;
         this.var_661 = param2;
         this.var_2761 = param4;
         this.var_86.setImageFromAsset(param2,param3,this.onPreviewImageReady);
      }
      
      public function dispose() : void
      {
         this.var_661 = null;
         this.var_86 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_86 == null;
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         if(!this.disposed)
         {
            _loc2_ = param1.target as AssetLoaderStruct;
            if(_loc2_ != null)
            {
               this.var_86.setImageFromAsset(this.var_661,_loc2_.assetName,null);
               if(this.var_2761 && this.var_661.bitmap != null)
               {
                  this.var_661.width = this.var_661.bitmap.width;
                  this.var_661.height = this.var_661.bitmap.height;
               }
            }
         }
         this.dispose();
      }
   }
}
