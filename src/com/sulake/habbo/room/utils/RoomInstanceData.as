package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_723:TileHeightMap = null;
      
      private var var_1107:LegacyWallGeometry = null;
      
      private var var_1108:RoomCamera = null;
      
      private var var_722:SelectedRoomObjectData = null;
      
      private var var_724:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_495:Map;
      
      private var var_494:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_495 = new Map();
         this.var_494 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1107 = new LegacyWallGeometry();
         this.var_1108 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_723;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_723 != null)
         {
            this.var_723.dispose();
         }
         this.var_723 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1107;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1108;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_722;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_722 != null)
         {
            this.var_722.dispose();
         }
         this.var_722 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_724;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_724 != null)
         {
            this.var_724.dispose();
         }
         this.var_724 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_723 != null)
         {
            this.var_723.dispose();
            this.var_723 = null;
         }
         if(this.var_1107 != null)
         {
            this.var_1107.dispose();
            this.var_1107 = null;
         }
         if(this.var_1108 != null)
         {
            this.var_1108.dispose();
            this.var_1108 = null;
         }
         if(this.var_722 != null)
         {
            this.var_722.dispose();
            this.var_722 = null;
         }
         if(this.var_724 != null)
         {
            this.var_724.dispose();
            this.var_724 = null;
         }
         if(this.var_495 != null)
         {
            this.var_495.dispose();
            this.var_495 = null;
         }
         if(this.var_494 != null)
         {
            this.var_494.dispose();
            this.var_494 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_495.remove(param1.id);
            this.var_495.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_495.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_495.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_495.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_494.remove(param1.id);
            this.var_494.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_494.length > 0)
         {
            return this.getWallItemDataWithId(this.var_494.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_494.remove(param1);
      }
   }
}
