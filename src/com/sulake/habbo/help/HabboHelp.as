package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_161:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_297:IHabboCommunicationManager;
      
      private var var_872:IHabboLocalizationManager;
      
      private var var_703:IHabboConfigurationManager;
      
      private var var_409:ISessionDataManager;
      
      private var var_1072:FaqIndex;
      
      private var var_1559:IncomingMessages;
      
      private var var_64:HelpUI;
      
      private var var_101:TutorialUI;
      
      private var var_704:HotelMergeUI;
      
      private var var_1339:CallForHelpData;
      
      private var var_2136:UserRegistry;
      
      private var var_2135:String = "";
      
      private var var_580:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1339 = new CallForHelpData();
         this.var_2136 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1072 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2135 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2135;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1339;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2136;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_872;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_161;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_409;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_101;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_704;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_101)
         {
            return this.var_101.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.dispose();
            this.var_64 = null;
         }
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
         if(this.var_704)
         {
            this.var_704.dispose();
            this.var_704 = null;
         }
         if(this.var_1072 != null)
         {
            this.var_1072.dispose();
            this.var_1072 = null;
         }
         this.var_1559 = null;
         if(this.var_161)
         {
            this.var_161.release(new IIDHabboToolbar());
            this.var_161 = null;
         }
         if(this.var_872)
         {
            this.var_872.release(new IIDHabboLocalizationManager());
            this.var_872 = null;
         }
         if(this.var_297)
         {
            this.var_297.release(new IIDHabboCommunicationManager());
            this.var_297 = null;
         }
         if(this.var_703)
         {
            this.var_703.release(new IIDHabboConfigurationManager());
            this.var_703 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_409 != null)
         {
            this.var_409.release(new IIDSessionDataManager());
            this.var_409 = null;
         }
         if(this.var_580 != null)
         {
            this.var_580.dispose();
            this.var_580 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_64 != null)
         {
            this.var_64.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1072;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_297 != null && param1 != null)
         {
            this.var_297.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_703 == null)
         {
            return param1;
         }
         return this.var_703.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_64 != null)
         {
            this.var_64.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1339.reportedUserId = param1;
         this.var_1339.reportedUserName = param2;
         this.var_64.showUI(HabboHelpViewEnum.const_391);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_64 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_64.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_64 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_64 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_872,this.var_161);
         }
         return this.var_64 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_101 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_101 = new TutorialUI(this,_loc1_);
         }
         return this.var_101 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_704)
         {
            this.var_704 = new HotelMergeUI(this);
         }
         this.var_704.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_101 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_101.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_101)
         {
            this.var_101.showView(TutorialUI.const_339);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_297 = IHabboCommunicationManager(param2);
         this.var_1559 = new IncomingMessages(this,this.var_297);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_161 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_872 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_703 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_86,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,this.onRoomSessionEvent);
         this.var_161.events.addEventListener(HabboToolbarEvent.const_73,this.onHabboToolbarEvent);
         this.var_161.events.addEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_409 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_86:
               if(this.var_64 != null)
               {
                  this.var_64.setRoomSessionStatus(true);
               }
               if(this.var_101 != null)
               {
                  this.var_101.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_90:
               if(this.var_64 != null)
               {
                  this.var_64.setRoomSessionStatus(false);
               }
               if(this.var_101 != null)
               {
                  this.var_101.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_580)
         {
            this.var_580 = new WelcomeScreenController(this,this._windowManager,this.var_703);
         }
         this.var_580.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_161 != null)
         {
            this.var_161.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_113,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_73)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_37)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
      
      public function setWelcomeNotifications(param1:Array) : void
      {
         if(!this.var_580)
         {
            this.showWelcomeScreen(true);
         }
         this.var_580.notifications = param1;
      }
   }
}
