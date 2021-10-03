package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1790:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_204:MsgWithRequestId;
      
      private var var_643:RoomEventData;
      
      private var var_2647:Boolean;
      
      private var var_2643:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2440:int;
      
      private var var_263:GuestRoomData;
      
      private var var_1001:PublicRoomShortData;
      
      private var var_2648:int;
      
      private var var_2645:Boolean;
      
      private var var_2642:int;
      
      private var var_2641:Boolean;
      
      private var var_1926:int;
      
      private var var_2644:Boolean;
      
      private var var_1353:Array;
      
      private var var_1515:Array;
      
      private var var_2639:int;
      
      private var var_1516:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1220:Boolean;
      
      private var var_2646:int;
      
      private var var_2640:Boolean;
      
      private var var_2649:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1353 = new Array();
         this.var_1515 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_263 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_263 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1001 = null;
         this.var_263 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1001 = param1.publicSpace;
            this.var_643 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_643 != null)
         {
            this.var_643.dispose();
            this.var_643 = null;
         }
         if(this.var_1001 != null)
         {
            this.var_1001.dispose();
            this.var_1001 = null;
         }
         if(this.var_263 != null)
         {
            this.var_263.dispose();
            this.var_263 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_263 != null)
         {
            this.var_263.dispose();
         }
         this.var_263 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_643 != null)
         {
            this.var_643.dispose();
         }
         this.var_643 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_204 != null && this.var_204 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_204 != null && this.var_204 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_204 != null && this.var_204 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_204 = param1;
         this.var_1220 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_204 = param1;
         this.var_1220 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_204 = param1;
         this.var_1220 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_204 == null)
         {
            return;
         }
         this.var_204.dispose();
         this.var_204 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_204 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_204 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_204 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_643;
      }
      
      public function get avatarId() : int
      {
         return this.var_2440;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2647;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2643;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_263;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1001;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2645;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2642;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1926;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2641;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2646;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2648;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2644;
      }
      
      public function get adIndex() : int
      {
         return this.var_2649;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2640;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2440 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2642 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2645 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2647 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2643 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2641 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1926 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2646 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2644 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2649 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2640 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1353 = param1;
         this.var_1515 = new Array();
         for each(_loc2_ in this.var_1353)
         {
            if(_loc2_.visible)
            {
               this.var_1515.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1353;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1515;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2639 = param1.limit;
         this.var_1516 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1516 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_263.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_263 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_263.flatId;
         return this.var_1926 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1516 >= this.var_2639;
      }
      
      public function startLoading() : void
      {
         this.var_1220 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1220;
      }
   }
}
