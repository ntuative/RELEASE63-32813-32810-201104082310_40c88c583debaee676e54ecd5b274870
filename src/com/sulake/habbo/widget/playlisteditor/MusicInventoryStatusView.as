package com.sulake.habbo.widget.playlisteditor
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MusicInventoryStatusView
   {
      
      public static const const_889:String = "MISV_BUY_MORE";
      
      public static const const_923:String = "MISV_PREVIEW_PLAYING";
       
      
      private var _container:IWindowContainer;
      
      private var var_407:Map;
      
      private var _widget:PlayListEditorWidget;
      
      private var var_45:String;
      
      private var var_1787:ITextWindow;
      
      private var var_1788:ITextWindow;
      
      public function MusicInventoryStatusView(param1:PlayListEditorWidget, param2:IWindowContainer)
      {
         this.var_407 = new Map();
         super();
         this._container = param2;
         this._widget = param1;
         this.createWindows();
         this.hide();
      }
      
      public function destroy() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_407.getValues())
         {
            _loc1_.destroy();
         }
         this.var_407 = null;
      }
      
      public function show() : void
      {
         this._container.visible = true;
      }
      
      public function hide() : void
      {
         this._container.visible = false;
      }
      
      public function selectView(param1:String) : void
      {
         this._container.removeChildAt(0);
         this._container.addChildAt(this.var_407[param1] as IWindowContainer,0);
         this.var_45 = param1;
      }
      
      public function set songName(param1:String) : void
      {
         if(this.var_1787 == null)
         {
            return;
         }
         this.var_1787.text = param1;
      }
      
      public function set authorName(param1:String) : void
      {
         if(this.var_1788 == null)
         {
            return;
         }
         this.var_1788.text = param1;
      }
      
      public function setPreviewPlayingBackgroundImage(param1:BitmapData, param2:Boolean = true) : void
      {
         this.blitBackgroundImage(const_923,"preview_play_background_image",param1);
         if(param2 && param1 != null)
         {
            param1.dispose();
         }
      }
      
      public function setGetMoreMusicBackgroundImage(param1:BitmapData, param2:Boolean = true) : void
      {
         this.blitBackgroundImage(const_889,"get_more_music_background_image",param1);
         if(param2 && param1 != null)
         {
            param1.dispose();
         }
      }
      
      private function createWindows() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         _loc2_ = this._widget.assets.getAssetByName("playlisteditor_inventory_subwindow_play_preview") as XmlAsset;
         _loc1_ = this._widget.windowManager.buildFromXML(_loc2_.content as XML) as IWindowContainer;
         if(_loc1_ != null)
         {
            this.var_407.add(const_923,_loc1_);
            this.var_1787 = _loc1_.getChildByName("preview_play_track_name") as ITextWindow;
            this.var_1788 = _loc1_.getChildByName("preview_play_author_name") as ITextWindow;
            _loc3_ = _loc1_.getChildByName("stop_preview_button") as IButtonWindow;
            _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onStopPreviewClicked);
            this.setPreviewPlayingBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_592));
         }
         _loc2_ = this._widget.assets.getAssetByName("playlisteditor_inventory_subwindow_get_more_music") as XmlAsset;
         _loc1_ = this._widget.windowManager.buildFromXML(_loc2_.content as XML) as IWindowContainer;
         if(_loc1_ != null)
         {
            this.var_407.add(const_889,_loc1_);
            _loc4_ = _loc1_.getChildByName("open_catalog_button") as IButtonWindow;
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onOpenCatalogButtonClicked);
            this.setGetMoreMusicBackgroundImage(this._widget.getImageGalleryAssetBitmap(PlayListEditorWidgetAssetsEnum.const_449));
         }
      }
      
      private function blitBackgroundImage(param1:String, param2:String, param3:BitmapData) : void
      {
         var _loc6_:* = null;
         var _loc4_:IWindowContainer = this.var_407[param1] as IWindowContainer;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:IBitmapWrapperWindow = _loc4_.getChildByName(param2) as IBitmapWrapperWindow;
         if(_loc5_ == null)
         {
            return;
         }
         if(param3 != null)
         {
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,false,4294967295);
            _loc6_.copyPixels(param3,param3.rect,new Point(0,0));
            _loc5_.bitmap = _loc6_;
         }
      }
      
      private function onOpenCatalogButtonClicked(param1:WindowMouseEvent) : void
      {
         this._widget.openSongDiskShopCataloguePage();
      }
      
      private function onStopPreviewClicked(param1:WindowMouseEvent) : void
      {
         this._widget.stopUserSong();
      }
   }
}
