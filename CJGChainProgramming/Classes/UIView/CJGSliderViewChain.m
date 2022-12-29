//
//  CJGSliderViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGSliderViewChain.h"
#define CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGSliderViewChain *,UISlider)

#define CJGCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(MehodName)\
- (CJGSliderViewChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))MehodName{\
return ^ (UIImage *image, UIControlState state){\
    [(UISlider *)self.view MehodName:image forState:state];\
    return self;\
};\
}

CJGCATEGORY_VIEW_IMPLEMENTATION(UISlider, CJGSliderViewChain)
@implementation CJGSliderViewChain
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(value ,float);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumValue ,float);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumValue ,float);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumValueImage ,UIImage *);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumValueImage, UIImage *);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(continuous, BOOL);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(minimumTrackTintColor, UIColor *);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(maximumTrackTintColor ,UIColor *);
CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION(thumbTintColor ,UIColor *);

- (CJGSliderViewChain * _Nonnull (^)(float, BOOL))setValueAnimated{
    return ^ (float v, BOOL a){
        [self enumerateObjectsUsingBlock:^(UISlider * _Nonnull obj) {
            [obj setValue:v animated:a];
        }];
        return self;
    };
}



CJGCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setThumbImage)
CJGCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setMinimumTrackImage);
CJGCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION(setMaximumTrackImage);

@end
#undef CJGCATEGORY_CHAIN_SLIDER_IMPLEMENTATION
#undef CJGCATEGORY_CHAIN_SLIDER_METHOND_IMPLEMENTATION
