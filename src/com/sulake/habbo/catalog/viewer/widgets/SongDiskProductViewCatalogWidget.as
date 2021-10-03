package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   import com.sulake.habbo.sound.HabboMusicPrioritiesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.sound.events.SongInfoReceivedEvent;
   
   public class SongDiskProductViewCatalogWidget extends ProductViewCatalogWidget
   {
       
      
      private var _soundManager:IHabboSoundManager;
      
      private var var_1088:IWindowContainer;
      
      private var var_458:IButtonWindow;
      
      private var var_1087:ITextWindow;
      
      private var var_884:int = -1;
      
      private var var_2930:String = "";
      
      public function SongDiskProductViewCatalogWidget(param1:IWindowContainer, param2:IHabboSoundManager)
      {
         super(param1);
         this.var_458 = _window.findChildByName("listen") as IButtonWindow;
         this.var_1087 = _window.findChildByName("ctlg_song_length") as ITextWindow;
         if(this.var_458 != null)
         {
            this.var_458.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClickPlay);
            this.var_458.disable();
         }
         this.var_1088 = _window.findChildByName("playPreviewContainer") as IWindowContainer;
         if(this.var_1088 != null)
         {
            this.var_1088.visible = false;
         }
         this._soundManager = param2;
         if(this._soundManager != null)
         {
            this._soundManager.events.addEventListener(SongInfoReceivedEvent.const_88,this.onSongInfoReceivedEvent);
         }
      }
      
      override public function dispose() : void
      {
         if(this.var_458 != null)
         {
            this.var_458.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClickPlay);
         }
         if(this._soundManager != null && this._soundManager.musicController != null)
         {
            this._soundManager.musicController.stop(HabboMusicPrioritiesEnum.const_285);
            if(this._soundManager.events != null)
            {
               this._soundManager.events.removeEventListener(SongInfoReceivedEvent.const_88,this.onSongInfoReceivedEvent);
            }
            this._soundManager = null;
         }
         super.dispose();
      }
      
      override public function closed() : void
      {
         super.closed();
         if(this._soundManager != null && this._soundManager.musicController != null)
         {
            this._soundManager.musicController.stop(HabboMusicPrioritiesEnum.const_285);
         }
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         if(page.offers.length == 0)
         {
            return false;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         return true;
      }
      
      private function onClickPlay(param1:WindowMouseEvent) : void
      {
         if(this._soundManager != null && this._soundManager.musicController != null)
         {
            this._soundManager.musicController.playSong(this.var_884,HabboMusicPrioritiesEnum.const_285,15,40,0,2);
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         if(param1 == null || param1.offer == null)
         {
            return;
         }
         var _loc2_:IProduct = param1.offer.productContainer.firstProduct;
         if(_loc2_.extraParam.length > 0)
         {
            this.var_884 = parseInt(_loc2_.extraParam);
            if(this.var_1088 != null)
            {
               this.var_1088.visible = true;
            }
         }
         else
         {
            this.var_884 = -1;
         }
         this.updateView();
      }
      
      private function updateView() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc1_:Boolean = false;
         var _loc2_:int = this.getSongLength();
         if(_loc2_ >= 0)
         {
            _loc3_ = _loc2_ / 60;
            _loc4_ = _loc2_ % 60;
            _loc5_ = "" + _loc3_;
            _loc6_ = "" + _loc4_;
            if(_loc4_ < 10)
            {
               _loc6_ = "0" + _loc6_;
            }
            _loc7_ = (page.viewer.catalog as HabboCatalog).localization;
            _loc7_.registerParameter("catalog.song.length","min",_loc5_);
            _loc8_ = _loc7_.registerParameter("catalog.song.length","sec",_loc6_);
            _loc1_ = true;
            if(this.var_1087 != null)
            {
               this.var_1087.text = _loc8_;
            }
         }
         else if(this.var_1087 != null)
         {
            this.var_1087.text = "";
         }
         if(this.var_458 != null)
         {
            if(_loc1_)
            {
               this.var_458.enable();
            }
            else
            {
               this.var_458.disable();
            }
         }
      }
      
      private function getSongLength() : int
      {
         var _loc1_:* = null;
         if(this._soundManager != null && this._soundManager.musicController != null)
         {
            _loc1_ = this._soundManager.musicController.getSongInfo(this.var_884);
            if(_loc1_ != null)
            {
               return _loc1_.length / 1000;
            }
            this._soundManager.musicController.requestSongInfoWithoutSamples(this.var_884);
         }
         return -1;
      }
      
      private function onSongInfoReceivedEvent(param1:SongInfoReceivedEvent) : void
      {
         if(param1.id == this.var_884)
         {
            this.updateView();
         }
      }
   }
}
