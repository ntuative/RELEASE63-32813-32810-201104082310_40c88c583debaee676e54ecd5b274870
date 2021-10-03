package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2021:String;
      
      private var var_2820:String;
      
      private var var_404:BitmapDataAsset;
      
      private var var_1385:Boolean;
      
      private var var_1384:Boolean;
      
      private var var_2819:Boolean;
      
      private var _offsetX:int;
      
      private var var_1098:int;
      
      private var var_269:int;
      
      private var _height:int;
      
      private var var_852:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2021 = param1;
         this.var_2820 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_404 = _loc9_;
            this.var_852 = false;
         }
         else
         {
            this.var_404 = null;
            this.var_852 = true;
         }
         this.var_1385 = param4;
         this.var_1384 = param5;
         this._offsetX = param6;
         this.var_1098 = param7;
         this.var_2819 = param8;
      }
      
      public function dispose() : void
      {
         this.var_404 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_852 && this.var_404 != null)
         {
            _loc1_ = this.var_404.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_269 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_852 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1384;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1385;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_269;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2021;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2820;
      }
      
      public function get asset() : IAsset
      {
         return this.var_404;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2819;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1385)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1384)
         {
            return this.var_1098;
         }
         return -(this.height + this.var_1098);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1098;
      }
   }
}
