//
//  CJGSliderViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGSliderViewChain;
@interface CJGSliderViewChain : CJGControlChain<CJGSliderViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ value) (float value);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ minimumValue) (float minimumValue);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ maximumValue) (float maximumValue);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ minimumValueImage) (UIImage * minimumValueImage);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ maximumValueImage) (UIImage * maximumValueImage);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ continuous) (BOOL continuous);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ minimumTrackTintColor) (UIColor * minimumTrackTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ maximumTrackTintColor) ( UIColor *maximumTrackTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ thumbTintColor) (UIColor * thumbTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ setThumbImage) (UIImage *image,UIControlState status);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ setMinimumTrackImage) (UIImage *image,UIControlState status);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ setMaximumTrackImage) (UIImage *image,UIControlState status);
CJGCATEGORY_CHAIN_PROPERTY CJGSliderViewChain * (^ setValueAnimated) (float value, BOOL animated);
@end

CJGCATEGORY_EXINTERFACE(UISlider, CJGSliderViewChain)
NS_ASSUME_NONNULL_END
