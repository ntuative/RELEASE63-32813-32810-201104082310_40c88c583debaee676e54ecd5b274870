package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_944:IAssetLoader;
      
      private var var_2021:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2021 = param1;
         this.var_944 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2021;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_944;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_944 != null)
            {
               if(!this.var_944.disposed)
               {
                  this.var_944.dispose();
                  this.var_944 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
