package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1960:uint;
      
      private var var_1959:uint;
      
      private var _b:uint;
      
      private var var_751:ColorTransform;
      
      private var var_1967:Number;
      
      private var var_1969:Number;
      
      private var var_1968:Number;
      
      private var var_2741:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1960 = this._rgb >> 16 & 255;
         this.var_1959 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1967 = this.var_1960 / 255 * 1;
         this.var_1969 = this.var_1959 / 255 * 1;
         this.var_1968 = this._b / 255 * 1;
         this.var_751 = new ColorTransform(this.var_1967,this.var_1969,this.var_1968);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1960;
      }
      
      public function get g() : uint
      {
         return this.var_1959;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_751;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2741;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2741 = param1;
      }
   }
}
