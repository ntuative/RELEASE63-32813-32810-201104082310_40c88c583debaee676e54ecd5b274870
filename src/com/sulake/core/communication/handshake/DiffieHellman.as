package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1000:BigInteger;
      
      private var var_2120:BigInteger;
      
      private var var_1594:BigInteger;
      
      private var var_2119:BigInteger;
      
      private var var_1328:BigInteger;
      
      private var var_1593:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1328 = param1;
         this.var_1593 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1328.toString() + ",generator: " + this.var_1593.toString() + ",secret: " + param1);
         this.var_1000 = new BigInteger();
         this.var_1000.fromRadix(param1,param2);
         this.var_2120 = this.var_1593.modPow(this.var_1000,this.var_1328);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1594 = new BigInteger();
         this.var_1594.fromRadix(param1,param2);
         this.var_2119 = this.var_1594.modPow(this.var_1000,this.var_1328);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2120.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2119.toRadix(param1);
      }
   }
}
