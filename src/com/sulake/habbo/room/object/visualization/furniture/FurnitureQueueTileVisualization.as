package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1379:int = 3;
      
      private static const const_1449:int = 2;
      
      private static const const_1451:int = 1;
      
      private static const const_1450:int = 15;
       
      
      private var var_307:Array;
      
      private var var_1277:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_307 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1449)
         {
            this.var_307 = new Array();
            this.var_307.push(const_1451);
            this.var_1277 = const_1450;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1277 > 0)
         {
            --this.var_1277;
         }
         if(this.var_1277 == 0)
         {
            if(this.var_307.length > 0)
            {
               super.setAnimation(this.var_307.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
