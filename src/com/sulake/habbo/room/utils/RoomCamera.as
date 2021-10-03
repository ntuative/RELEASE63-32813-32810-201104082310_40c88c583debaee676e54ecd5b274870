package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_968:int = 3;
       
      
      private var var_2372:int = -1;
      
      private var var_2373:int = -2;
      
      private var var_218:Vector3d = null;
      
      private var var_195:Vector3d = null;
      
      private var var_1762:Vector3d;
      
      private var var_2374:Boolean = false;
      
      private var var_2369:Boolean = false;
      
      private var var_2366:Boolean = false;
      
      private var var_2365:Boolean = false;
      
      private var var_2368:int = 0;
      
      private var var_2371:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2367:int = 0;
      
      private var var_2370:int = 0;
      
      private var var_1854:int = -1;
      
      private var var_1414:int = 0;
      
      private var var_1763:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1762 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_195;
      }
      
      public function get targetId() : int
      {
         return this.var_2372;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2373;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1762;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2374;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2369;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2366;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2365;
      }
      
      public function get screenWd() : int
      {
         return this.var_2368;
      }
      
      public function get screenHt() : int
      {
         return this.var_2371;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2367;
      }
      
      public function get roomHt() : int
      {
         return this.var_2370;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1854;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_218 != null && this.var_195 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2372 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1762.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2373 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2374 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2371 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1763 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2367 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1854 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_218 == null)
         {
            this.var_218 = new Vector3d();
         }
         if(this.var_218.x != param1.x || this.var_218.y != param1.y || this.var_218.z != param1.z)
         {
            this.var_218.assign(param1);
            this.var_1414 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_218 = null;
         this.var_195 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_195 != null)
         {
            return;
         }
         this.var_195 = new Vector3d();
         this.var_195.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_195 == null)
         {
            this.var_195 = new Vector3d();
         }
         this.var_195.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_218 != null && this.var_195 != null)
         {
            ++this.var_1414;
            if(this.var_1763)
            {
               this.var_1763 = false;
               this.var_195 = this.var_218;
               this.var_218 = null;
               return;
            }
            _loc4_ = Vector3d.dif(this.var_218,this.var_195);
            if(_loc4_.length <= param2)
            {
               this.var_195 = this.var_218;
               this.var_218 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_968 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1414 <= const_968)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_195 = Vector3d.sum(this.var_195,_loc4_);
            }
         }
      }
   }
}
