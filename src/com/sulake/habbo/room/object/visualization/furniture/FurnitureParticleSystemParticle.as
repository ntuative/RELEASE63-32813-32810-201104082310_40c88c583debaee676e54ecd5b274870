package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_153:Number;
      
      private var var_152:Number;
      
      private var var_1940:Number;
      
      private var var_1943:Number;
      
      private var var_1941:Number;
      
      private var var_1226:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_536:int = 0;
      
      private var var_1005:int;
      
      private var var_2697:Boolean = false;
      
      private var var_1942:Boolean = false;
      
      private var var_1393:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1942;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_536;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_153 = param2;
         this.var_152 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1940 = this._x - this._direction.x * param6;
         this.var_1943 = this.var_153 - this._direction.y * param6;
         this.var_1941 = this.var_152 - this._direction.z * param6;
         this.var_536 = 0;
         this.var_1226 = false;
         this.var_1005 = param7;
         this.var_2697 = param8;
         this._frames = param9;
         this.var_1942 = param10;
         this._alphaMultiplier = 1;
         this.var_1393 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_536;
         if(this.var_536 == this.var_1005)
         {
            this.ignite();
         }
         if(this.var_1942)
         {
            if(this.var_536 / this.var_1005 > this.var_1393)
            {
               this._alphaMultiplier = (this.var_1005 - this.var_536) / (this.var_1005 * (1 - this.var_1393));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_536 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2697;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_536 <= this.var_1005;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_153 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_152 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1940;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1226 = true;
         this.var_1940 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1943;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1226 = true;
         this.var_1943 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1941;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1226 = true;
         this.var_1941 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1226;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_153,this.var_152].toString();
      }
   }
}
