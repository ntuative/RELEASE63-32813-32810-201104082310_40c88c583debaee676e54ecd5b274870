package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_373:int = 1;
      
      public static const const_268:int = 2;
      
      public static const const_294:int = 3;
      
      public static const const_418:int = 4;
      
      public static const const_258:int = 5;
      
      public static const const_376:int = 1;
      
      public static const const_876:int = 2;
      
      public static const const_689:int = 3;
      
      public static const const_901:int = 4;
      
      public static const const_253:int = 5;
      
      public static const const_744:int = 6;
      
      public static const const_687:int = 7;
      
      public static const const_277:int = 8;
      
      public static const const_365:int = 9;
      
      public static const const_1914:int = 10;
      
      public static const const_835:int = 11;
      
      public static const const_459:int = 12;
       
      
      private var var_431:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_431 = new Array();
         this.var_431.push(new Tab(this._navigator,const_373,const_459,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_601));
         this.var_431.push(new Tab(this._navigator,const_268,const_376,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_601));
         this.var_431.push(new Tab(this._navigator,const_418,const_835,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1132));
         this.var_431.push(new Tab(this._navigator,const_294,const_253,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_601));
         this.var_431.push(new Tab(this._navigator,const_258,const_277,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_682));
         this.setSelectedTab(const_373);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_418;
      }
      
      public function get tabs() : Array
      {
         return this.var_431;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_431)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
