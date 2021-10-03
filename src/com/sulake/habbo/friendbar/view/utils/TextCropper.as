package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_483:TextField;
      
      private var var_882:TextFormat;
      
      private var var_2890:String = "...";
      
      private var var_2891:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_483 = new TextField();
         this.var_483.autoSize = TextFieldAutoSize.LEFT;
         this.var_882 = this.var_483.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_483 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_882.font = param1.fontFace;
         this.var_882.size = param1.fontSize;
         this.var_882.bold = param1.bold;
         this.var_882.italic = param1.italic;
         this.var_483.setTextFormat(this.var_882);
         this.var_483.text = param1.getLineText(0);
         var _loc2_:int = this.var_483.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_483.getCharIndexAtPoint(param1.width - this.var_2891,this.var_483.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_2890;
         }
      }
   }
}
