package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_517:WallRasterizer;
      
      private var var_519:FloorRasterizer;
      
      private var var_787:WallAdRasterizer;
      
      private var var_518:LandscapeRasterizer;
      
      private var var_786:PlaneMaskManager;
      
      private var var_852:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_517 = new WallRasterizer();
         this.var_519 = new FloorRasterizer();
         this.var_787 = new WallAdRasterizer();
         this.var_518 = new LandscapeRasterizer();
         this.var_786 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_852;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_519;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_517;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_787;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_518;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_786;
      }
      
      public function dispose() : void
      {
         if(this.var_517 != null)
         {
            this.var_517.dispose();
            this.var_517 = null;
         }
         if(this.var_519 != null)
         {
            this.var_519.dispose();
            this.var_519 = null;
         }
         if(this.var_787 != null)
         {
            this.var_787.dispose();
            this.var_787 = null;
         }
         if(this.var_518 != null)
         {
            this.var_518.dispose();
            this.var_518 = null;
         }
         if(this.var_786 != null)
         {
            this.var_786.dispose();
            this.var_786 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_517 != null)
         {
            this.var_517.clearCache();
         }
         if(this.var_519 != null)
         {
            this.var_519.clearCache();
         }
         if(this.var_518 != null)
         {
            this.var_518.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_517.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_519.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_787.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_518.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_786.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_852)
         {
            return;
         }
         this.var_517.initializeAssetCollection(param1);
         this.var_519.initializeAssetCollection(param1);
         this.var_787.initializeAssetCollection(param1);
         this.var_518.initializeAssetCollection(param1);
         this.var_786.initializeAssetCollection(param1);
         this.var_852 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
