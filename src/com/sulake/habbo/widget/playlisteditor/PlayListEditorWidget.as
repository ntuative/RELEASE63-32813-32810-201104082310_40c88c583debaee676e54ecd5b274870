package com.sulake.habbo.widget.playlisteditor
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.sound.IPlayListController;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetPlayListEditorEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetPlayListModificationMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetPlayListPlayStateMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetPlayListUserActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   
   public class PlayListEditorWidget extends RoomWidgetBase
   {
      
      private static const const_1313:int = 130;
      
      private static const const_1310:int = 100;
      
      private static const const_1312:int = 130;
      
      private static const const_1309:int = 100;
      
      private static const const_1311:int = 130;
      
      private static const const_1314:int = 100;
       
      
      private var _catalog:IHabboCatalog;
      
      private var var_186:IHabboConfigurationManager;
      
      private var _soundManager:IHabboSoundManager;
      
      private var var_16:MainWindowHandler;
      
      private var _furniId:int;
      
      public function PlayListEditorWidget(param1:IHabboWindowManager, param2:IHabboSoundManager, param3:IAssetLibrary, param4:IHabboLocalizationManager, param5:IHabboConfigurationManager, param6:IHabboCatalog)
      {
         super(param1,param3,param4);
         this._soundManager = param2;
         this.var_186 = param5;
         this._catalog = param6;
         this.var_16 = null;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_16)
            {
               this.var_16.destroy();
               this.var_16 = null;
            }
            this._soundManager = null;
            super.dispose();
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         if(this.var_16 == null)
         {
            return null;
         }
         return this.var_16.window;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_685,this.onShowPlayListEditorEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_856,this.onHidePlayListEditorEvent);
         param1.addEventListener(RoomWidgetPlayListEditorEvent.const_833,this.onInventoryUpdatedEvent);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_685,this.onShowPlayListEditorEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_856,this.onHidePlayListEditorEvent);
         param1.removeEventListener(RoomWidgetPlayListEditorEvent.const_833,this.onInventoryUpdatedEvent);
      }
      
      public function getDiskColorTransformFromSongData(param1:String) : ColorTransform
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            switch(_loc5_ % 3)
            {
               case 0:
                  _loc2_ += param1.charCodeAt(_loc5_) as int;
                  break;
               case 1:
                  _loc3_ += param1.charCodeAt(_loc5_) as int;
                  break;
               case 2:
                  _loc4_ += param1.charCodeAt(_loc5_) as int;
                  break;
            }
            _loc5_++;
         }
         _loc2_ = uint(_loc2_ % const_1310 + const_1313);
         _loc3_ = uint(_loc3_ % const_1309 + const_1312);
         _loc4_ = uint(_loc4_ % const_1314 + const_1311);
         return new ColorTransform(_loc2_ / 255,_loc3_ / 255,_loc4_ / 255);
      }
      
      public function sendAddToPlayListMessage(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:IPlayListController = this._soundManager.musicController.getRoomItemPlaylist();
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.length;
            _loc4_ = new RoomWidgetPlayListModificationMessage(RoomWidgetPlayListModificationMessage.const_933,_loc3_,param1);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc4_);
            }
         }
      }
      
      public function sendRemoveFromPlayListMessage(param1:int) : void
      {
         var _loc2_:RoomWidgetPlayListModificationMessage = new RoomWidgetPlayListModificationMessage(RoomWidgetPlayListModificationMessage.const_871,param1);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
      }
      
      public function sendTogglePlayPauseStateMessage() : void
      {
         var _loc1_:int = -1;
         if(this.var_16 != null && this.var_16.playListEditorView != null)
         {
            _loc1_ = this.var_16.playListEditorView.selectedItemIndex;
         }
         var _loc2_:RoomWidgetPlayListPlayStateMessage = new RoomWidgetPlayListPlayStateMessage(RoomWidgetPlayListPlayStateMessage.const_708,this._furniId,_loc1_);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
      }
      
      public function playUserSong(param1:int) : void
      {
         this._soundManager.musicController.playSong(param1,HabboMusicPrioritiesEnum.const_394,0,0,0,0);
      }
      
      public function stopUserSong() : void
      {
         this._soundManager.musicController.stop(HabboMusicPrioritiesEnum.const_394);
      }
      
      public function getImageGalleryAssetBitmap(param1:String) : BitmapData
      {
         var _loc3_:* = null;
         var _loc2_:BitmapDataAsset = this.assets.getAssetByName(param1) as BitmapDataAsset;
         if(_loc2_ == null)
         {
            return null;
         }
         _loc3_ = _loc2_.content as BitmapData;
         return _loc3_.clone();
      }
      
      public function retrieveWidgetImage(param1:String) : void
      {
         var _loc2_:String = this.var_186.getKey("image.library.playlist.url");
         var _loc3_:* = _loc2_ + param1 + ".gif";
         Logger.log("[PlayListEditorWidget]  : " + _loc3_);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         var _loc5_:AssetLoaderStruct = this.assets.loadAssetFromFile(param1,_loc4_,"image/gif");
         _loc5_.addEventListener(AssetLoaderEvent.const_29,this.onWidgetImageReady);
      }
      
      public function openSongDiskShopCataloguePage() : void
      {
         var _loc1_:RoomWidgetPlayListUserActionMessage = new RoomWidgetPlayListUserActionMessage(RoomWidgetPlayListUserActionMessage.const_782);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this._catalog.openCatalogPage(CatalogPageName.const_1638,true);
      }
      
      public function alertPlayListFull() : void
      {
         this.windowManager.alert("${playlist.editor.alert.playlist.full.title}","${playlist.editor.alert.playlist.full}",0,this.alertHandler);
      }
      
      private function alertHandler(param1:IAlertDialog, param2:WindowEvent) : void
      {
         param1.dispose();
      }
      
      private function onShowPlayListEditorEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         var _loc2_:* = null;
         this._furniId = param1.furniId;
         if(!this.var_16)
         {
            this.var_16 = new MainWindowHandler(this,this._soundManager.musicController);
            this.var_16.window.visible = false;
         }
         if(!this.var_16.window.visible)
         {
            this.var_16.show();
            this._soundManager.musicController.requestUserSongDisks();
            _loc2_ = this._soundManager.musicController.getRoomItemPlaylist();
            if(_loc2_ != null)
            {
               _loc2_.requestPlayList();
            }
         }
      }
      
      private function onHidePlayListEditorEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(this.var_16 != null)
         {
            if(this.var_16.window.visible)
            {
               this.var_16.hide();
            }
         }
      }
      
      private function onInventoryUpdatedEvent(param1:RoomWidgetPlayListEditorEvent) : void
      {
         if(!this.var_16)
         {
            return;
         }
         if(this.var_16.window.visible)
         {
            this._soundManager.musicController.requestUserSongDisks();
         }
      }
      
      private function onWidgetImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc2_:* = null;
         if(param1.type == AssetLoaderEvent.const_29)
         {
            _loc2_ = param1.target as AssetLoaderStruct;
            if(_loc2_ != null)
            {
               this.var_16.refreshLoadableAsset(_loc2_.assetName);
            }
         }
      }
   }
}
