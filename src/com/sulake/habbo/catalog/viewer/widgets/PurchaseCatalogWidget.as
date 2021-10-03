package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2476:XML;
      
      private var var_2477:XML;
      
      private var var_2478:XML;
      
      private var var_942:IWindowContainer;
      
      private var var_612:IButtonWindow;
      
      private var var_2935:IButtonWindow;
      
      private var var_1822:ITextWindow;
      
      private var var_1825:ITextWindow;
      
      private var var_1824:ITextWindow;
      
      private var var_2907:ITextWindow;
      
      private var var_93:Offer;
      
      private var var_1823:String = "";
      
      private var var_1444:Function;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function dispose() : void
      {
         events.removeEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.removeEventListener(WidgetEvent.const_853,this.onSetParameter);
         events.removeEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2476 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2477 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2478 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_853,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         events.addEventListener(WidgetEvent.CWE_INIT_PURCHASE,this.initPurchase);
         return true;
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1444 = param1.callback;
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_878:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2476) as IWindowContainer;
               break;
            case Offer.const_1083:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2477) as IWindowContainer;
               break;
            case Offer.const_1059:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2478) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach..." + this.var_93.priceType);
         }
         if(_loc2_ != null)
         {
            if(this.var_942 != null)
            {
               _window.removeChild(this.var_942);
               this.var_942.dispose();
            }
            this.var_942 = _loc2_;
            _window.addChild(_loc2_);
            this.var_942.x = 0;
            this.var_942.y = 0;
         }
         this.var_1822 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1825 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1824 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_2907 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_612 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(this.var_612 != null)
         {
            if(this.var_1444 != null)
            {
               this.var_612.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1444);
            }
            else
            {
               this.var_612.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1444);
               this.var_612.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_612.disable();
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_93 = param1.offer;
         this.attachStub(this.var_93.priceType);
         if(this.var_1822 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_93.priceInCredits));
            this.var_1822.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_93.activityPointType == Purse.const_198 ? "pixels" : "activitypoints";
         if(this.var_1825 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_93.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_93.priceInActivityPoints.toString());
            this.var_1825.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1824 != null)
         {
            _loc4_ = "catalog.purchase.price.credits+activitypoints." + this.var_93.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_93.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_93.priceInActivityPoints));
            this.var_1824.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_93.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_612 != null)
         {
            this.var_612.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_1823 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_93 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_93,page.pageId,this.var_1823);
         }
      }
      
      private function initPurchase(param1:CatalogWidgetInitPurchaseEvent) : void
      {
         if(this.var_93 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_93,page.pageId,this.var_1823,param1.enableBuyAsGift);
         }
      }
   }
}
