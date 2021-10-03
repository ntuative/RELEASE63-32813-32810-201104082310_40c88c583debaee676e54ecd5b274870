package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2431:String;
      
      private var var_2432:String;
      
      private var var_2430:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2431 = param1;
         this.var_2432 = param2;
         this.var_2430 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2431;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2432;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2430;
      }
   }
}
