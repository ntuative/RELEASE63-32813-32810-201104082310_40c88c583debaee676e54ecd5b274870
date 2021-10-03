package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1664:String;
      
      private var var_1769:int;
      
      private var var_2473:Boolean;
      
      private var var_2471:Boolean;
      
      private var var_2472:int;
      
      private var var_2469:int;
      
      private var var_2468:int;
      
      private var var_2474:int;
      
      private var var_2470:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1664 = param1.readString();
         this.var_1769 = param1.readInteger();
         this.var_2473 = param1.readBoolean();
         this.var_2471 = param1.readBoolean();
         this.var_2472 = param1.readInteger();
         this.var_2469 = param1.readInteger();
         this.var_2468 = param1.readInteger();
         this.var_2474 = param1.readInteger();
         this.var_2470 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1664;
      }
      
      public function get price() : int
      {
         return this.var_1769;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2473;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2471;
      }
      
      public function get periods() : int
      {
         return this.var_2472;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2469;
      }
      
      public function get year() : int
      {
         return this.var_2468;
      }
      
      public function get month() : int
      {
         return this.var_2474;
      }
      
      public function get day() : int
      {
         return this.var_2470;
      }
   }
}
