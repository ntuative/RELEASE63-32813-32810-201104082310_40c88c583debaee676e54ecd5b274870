package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1542:String = "pricing_model_unknown";
      
      public static const const_357:String = "pricing_model_single";
      
      public static const const_397:String = "pricing_model_multi";
      
      public static const const_472:String = "pricing_model_bundle";
      
      public static const PRICE_TYPE_NONE:String = "price_type_none";
      
      public static const const_878:String = "price_type_credits";
      
      public static const const_1083:String = "price_type_activitypoints";
      
      public static const const_1059:String = "price_type_credits_and_activitypoints";
       
      
      private var var_736:String;
      
      private var var_1121:String;
      
      private var _offerId:int;
      
      private var var_1736:String;
      
      private var var_1122:int;
      
      private var var_1120:int;
      
      private var var_1737:int;
      
      private var var_357:ICatalogPage;
      
      private var var_593:IProductContainer;
      
      private var var_1568:String = "";
      
      private var var_2342:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1736 = param2;
         this.var_1122 = param3;
         this.var_1120 = param4;
         this.var_1737 = param5;
         this.var_357 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get extraParameter() : String
      {
         return this.var_1568;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1568 = param1;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_357;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1736;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1122;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1120;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1737;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_593;
      }
      
      public function get pricingModel() : String
      {
         return this.var_736;
      }
      
      public function get priceType() : String
      {
         return this.var_1121;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2342;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2342 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1736 = "";
         this.var_1122 = 0;
         this.var_1120 = 0;
         this.var_1737 = 0;
         this.var_357 = null;
         if(this.var_593 != null)
         {
            this.var_593.dispose();
            this.var_593 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_736)
         {
            case const_357:
               this.var_593 = new SingleProductContainer(this,param1);
               break;
            case const_397:
               this.var_593 = new MultiProductContainer(this,param1);
               break;
            case const_472:
               this.var_593 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_736);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_736 = const_357;
            }
            else
            {
               this.var_736 = const_397;
            }
         }
         else if(param1.length > 1)
         {
            this.var_736 = const_472;
         }
         else
         {
            this.var_736 = const_1542;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1122 > 0 && this.var_1120 > 0)
         {
            this.var_1121 = const_1059;
         }
         else if(this.var_1122 > 0)
         {
            this.var_1121 = const_878;
         }
         else if(this.var_1120 > 0)
         {
            this.var_1121 = const_1083;
         }
         else
         {
            this.var_1121 = PRICE_TYPE_NONE;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_357.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_593.products)
         {
            _loc4_ = this.var_357.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
