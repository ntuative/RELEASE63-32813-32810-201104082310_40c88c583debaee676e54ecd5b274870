package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_985:String = "avatar";
      
      private static const const_624:Number = -0.01;
      
      private static const const_623:Number = -0.409;
      
      private static const const_984:int = 2;
      
      private static const const_1303:Array = [0,0,0];
      
      private static const const_1353:int = 3;
       
      
      private var var_605:AvatarVisualizationData = null;
      
      private var var_498:Map;
      
      private var var_506:Map;
      
      private var var_1126:int = 0;
      
      private var var_1019:Boolean;
      
      private var var_599:String;
      
      private var var_929:String;
      
      private var var_1125:int = 0;
      
      private var var_604:BitmapDataAsset;
      
      private var var_935:BitmapDataAsset;
      
      private var var_1747:int = -1;
      
      private var var_1801:int = -1;
      
      private var var_1803:int = -1;
      
      private const const_983:int = 0;
      
      private const const_1772:int = 1;
      
      private const const_1779:int = 2;
      
      private const const_1780:int = 3;
      
      private const const_1304:int = 4;
      
      private var var_1854:int = -1;
      
      private var var_251:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1800:Boolean = false;
      
      private var var_1804:Boolean = false;
      
      private var var_1802:Boolean = false;
      
      private var var_1431:Boolean = false;
      
      private var var_598:Boolean = false;
      
      private var var_1409:int = 0;
      
      private var var_1432:int = 0;
      
      private var var_2429:int = 0;
      
      private var var_759:int = 0;
      
      private var var_758:int = 0;
      
      private var var_606:int = 0;
      
      private var var_1430:int = 0;
      
      private var var_1146:Boolean = false;
      
      private var var_1805:Boolean = false;
      
      private var var_1145:int = 0;
      
      private var var_760:int = 0;
      
      private var var_1806:Boolean = false;
      
      private var var_1147:int = 0;
      
      private var var_59:IAvatarImage = null;
      
      private var var_1063:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_498 = new Map();
         this.var_506 = new Map();
         this.var_1019 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_498 != null)
         {
            this.resetImages();
            this.var_498.dispose();
            this.var_506.dispose();
            this.var_498 = null;
         }
         this.var_605 = null;
         this.var_604 = null;
         this.var_935 = null;
         super.dispose();
         this.var_1063 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1063;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_605 = param1 as AvatarVisualizationData;
         createSprites(this.const_1304);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_171)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_232) > 0 && param3);
            if(_loc5_ != this.var_1800)
            {
               this.var_1800 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_405) > 0;
            if(_loc5_ != this.var_1804)
            {
               this.var_1804 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_414) > 0;
            if(_loc5_ != this.var_1802)
            {
               this.var_1802 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_794) > 0 && param3);
            if(_loc5_ != this.var_1431)
            {
               this.var_1431 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1110) > 0;
            if(_loc5_ != this.var_598)
            {
               this.var_598 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_139);
            if(_loc6_ != this.var_1409)
            {
               this.var_1409 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_254);
            if(_loc7_ != this.var_251)
            {
               this.var_251 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_864);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1226);
            if(_loc6_ != this.var_1432)
            {
               this.var_1432 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_543);
            if(_loc6_ != this.var_759)
            {
               this.var_759 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_548);
            if(_loc6_ != this.var_758)
            {
               this.var_758 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_371);
            if(_loc6_ != this.var_606)
            {
               this.var_606 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_190);
            if(_loc6_ != this.var_1747)
            {
               this.var_1747 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_758 > 0 && param1.getNumber(RoomObjectVariableEnum.const_371) > 0)
            {
               if(this.var_606 != this.var_758)
               {
                  this.var_606 = this.var_758;
                  _loc4_ = true;
               }
            }
            else if(this.var_606 != 0)
            {
               this.var_606 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_831);
            if(_loc6_ != this.var_1145)
            {
               this.var_1145 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1254);
            if(_loc7_ != this.var_929)
            {
               this.var_929 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_205);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_171 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_599 != param1)
         {
            this.var_599 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_498)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_506)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_498.reset();
         this.var_506.reset();
         this.var_59 = null;
         _loc2_ = getSprite(this.const_983);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1431 = false;
         }
         if(this.var_251 == "sit" || this.var_251 == "lay")
         {
            this.var_1430 = param1 / 2;
         }
         else
         {
            this.var_1430 = 0;
         }
         this.var_1805 = false;
         this.var_1146 = false;
         if(this.var_251 == "lay")
         {
            this.var_1146 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1805 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_498.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_506.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_605.getAvatar(this.var_599,param1,this.var_929,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_498.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_506.length >= const_1353)
                  {
                     this.var_506.remove(this.var_506.getKeys().shift());
                  }
                  this.var_506.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_466 != param1.getUpdateID() || this.var_1854 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1747;
            if(this.var_251 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1801 || param4)
            {
               _loc5_ = true;
               this.var_1801 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_59.setDirectionAngle(AvatarSetType.const_36,_loc6_);
            }
            if(_loc7_ != this.var_1803 || param4)
            {
               _loc5_ = true;
               this.var_1803 = _loc7_;
               if(this.var_1803 != this.var_1801)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_59.setDirectionAngle(AvatarSetType.const_51,_loc7_);
               }
            }
            var_466 = param1.getUpdateID();
            this.var_1854 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1772);
         this.var_604 = null;
         if(this.var_251 == "mv" || this.var_251 == "std")
         {
            _loc2_.visible = true;
            if(this.var_604 == null || param1 != var_88)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_604 = this.var_59.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_604 = this.var_59.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_604 != null)
               {
                  _loc2_.asset = this.var_604.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_604 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_935 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1779);
         if(this.var_598)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_935 = this.var_605.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_935 = this.var_605.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_251 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_251 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_935 != null)
            {
               _loc2_.asset = this.var_935.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1780);
         if(this.var_1145 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_605.getAvatarRendererAsset("number_" + this.var_1145 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_605.getAvatarRendererAsset("number_" + this.var_1145 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_251 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_251 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_760 = 1;
               this.var_1806 = true;
               this.var_1147 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_760 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1780);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1806)
         {
            ++this.var_1147;
            if(this.var_1147 < 10)
            {
               return false;
            }
            if(this.var_760 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1147 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_760 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_760 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_760 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_760 = 0;
               this.var_1806 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_605 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_759;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_88 || this.var_59 == null)
         {
            if(_loc7_ != var_88)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_759)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_59 == null || _loc12_)
            {
               this.var_59 = this.getAvatarImage(_loc7_,this.var_759);
               if(this.var_59 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_983);
               if(_loc16_ && this.var_59 && this.var_59.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_59 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_59);
            var_88 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_1019 || this.var_1125 > 0) && param3;
         if(_loc14_)
         {
            this.var_1125 = const_984;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1125;
            --this.var_1126;
            if(!(this.var_1126 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_59.updateAnimationByFrames(1);
            this.var_1126 = const_984;
            _loc18_ = this.var_59.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1303;
            }
            _loc17_ = getSprite(this.const_983);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_59.getImage(AvatarSetType.const_36,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1430;
               }
               if(this.var_1146)
               {
                  if(this.var_1805)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_623 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_624 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_1779);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1146)
               {
                  _loc17_.relativeDepth = const_624 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_623 - 0.01 + _loc18_[2];
               }
            }
            this.var_1019 = this.var_59.isAnimating();
            _loc19_ = this.const_1304;
            for each(_loc20_ in this.var_59.getSprites())
            {
               if(_loc20_.id == const_985)
               {
                  _loc17_ = getSprite(this.const_983);
                  _loc22_ = this.var_59.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_59.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_59.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_59.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_59.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_59.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_59.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_59.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_59.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_59.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1430;
                     if(this.var_1146)
                     {
                        _loc17_.relativeDepth = const_623 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_624 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_387,this.var_251,this._postureParameter);
         if(this.var_1409 > 0)
         {
            param1.appendAction(AvatarAction.const_337,AvatarAction.const_1461[this.var_1409]);
         }
         if(this.var_1432 > 0)
         {
            param1.appendAction(AvatarAction.DANCE,this.var_1432);
         }
         if(this.var_2429 > 0)
         {
            param1.appendAction(AvatarAction.const_716,this.var_2429);
         }
         if(this.var_758 > 0)
         {
            param1.appendAction(AvatarAction.const_659,this.var_758);
         }
         if(this.var_606 > 0)
         {
            param1.appendAction(AvatarAction.const_775,this.var_606);
         }
         if(this.var_1800)
         {
            param1.appendAction(AvatarAction.const_293);
         }
         if(this.var_1802 || this.var_1431)
         {
            param1.appendAction(AvatarAction.const_553);
         }
         if(this.var_1804)
         {
            param1.appendAction(AvatarAction.WAVE);
         }
         if(this.var_759 > 0)
         {
            param1.appendAction(AvatarAction.const_318,this.var_759);
         }
         param1.endActionAppends();
         this.var_1019 = param1.isAnimating();
         var _loc2_:int = this.const_1304;
         for each(_loc3_ in this.var_59.getSprites())
         {
            if(_loc3_.id != const_985)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
