package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2125:String;
      
      private var var_1606:String;
      
      private var var_2126:String;
      
      private var var_1605:Boolean;
      
      private var var_1607:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2125 = String(param1["set-type"]);
         this.var_1606 = String(param1["flipped-set-type"]);
         this.var_2126 = String(param1["remove-set-type"]);
         this.var_1605 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1607 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1607;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1607 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2125;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1606;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2126;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1605;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1605 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1606 = param1;
      }
   }
}
