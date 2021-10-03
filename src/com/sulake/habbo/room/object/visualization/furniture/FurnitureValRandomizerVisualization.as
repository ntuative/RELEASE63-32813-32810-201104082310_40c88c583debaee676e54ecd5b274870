package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_995:int = 20;
      
      private static const const_631:int = 10;
      
      private static const const_1380:int = 31;
      
      private static const const_1379:int = 32;
      
      private static const const_632:int = 30;
       
      
      private var var_307:Array;
      
      private var var_753:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_307 = new Array();
         super();
         super.setAnimation(const_632);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_753)
            {
               this.var_753 = true;
               this.var_307 = new Array();
               this.var_307.push(const_1380);
               this.var_307.push(const_1379);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_631)
         {
            if(this.var_753)
            {
               this.var_753 = false;
               this.var_307 = new Array();
               if(direction == 2)
               {
                  this.var_307.push(const_995 + 5 - param1);
                  this.var_307.push(const_631 + 5 - param1);
               }
               else
               {
                  this.var_307.push(const_995 + param1);
                  this.var_307.push(const_631 + param1);
               }
               this.var_307.push(const_632);
               return;
            }
            super.setAnimation(const_632);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
