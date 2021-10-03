package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1964:int = 0;
      
      public static const const_1649:int = 1;
      
      public static const const_1509:int = 2;
      
      public static const const_1833:int = 3;
      
      public static const const_2024:int = 4;
      
      public static const const_2020:int = 5;
      
      public static const const_1595:int = 10;
      
      public static const const_1991:int = 11;
      
      public static const const_1982:int = 12;
      
      public static const const_1946:int = 13;
      
      public static const const_1893:int = 16;
      
      public static const const_2022:int = 17;
      
      public static const const_1927:int = 18;
      
      public static const const_1828:int = 19;
      
      public static const const_1923:int = 20;
      
      public static const const_1891:int = 22;
      
      public static const const_1999:int = 23;
      
      public static const const_1953:int = 24;
      
      public static const const_1974:int = 25;
      
      public static const const_1818:int = 26;
      
      public static const const_1899:int = 27;
      
      public static const const_1960:int = 28;
      
      public static const const_1930:int = 29;
      
      public static const const_1947:int = 100;
      
      public static const const_1835:int = 101;
      
      public static const const_1867:int = 102;
      
      public static const const_2007:int = 103;
      
      public static const const_1907:int = 104;
      
      public static const const_1839:int = 105;
      
      public static const const_1819:int = 106;
      
      public static const const_1880:int = 107;
      
      public static const const_1854:int = 108;
      
      public static const const_2023:int = 109;
      
      public static const const_1963:int = 110;
      
      public static const const_2028:int = 111;
      
      public static const const_1994:int = 112;
      
      public static const const_1955:int = 113;
      
      public static const const_1965:int = 114;
      
      public static const const_1916:int = 115;
      
      public static const const_1942:int = 116;
      
      public static const const_1918:int = 117;
      
      public static const const_1870:int = 118;
      
      public static const const_2002:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1649:
            case const_1595:
               return "banned";
            case const_1509:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
