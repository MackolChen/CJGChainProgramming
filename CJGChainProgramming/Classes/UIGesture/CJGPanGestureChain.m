//
//  CJGPanGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGPanGestureChain.h"

#define CJGCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGPanGestureChain *, UIPanGestureRecognizer)
@implementation CJGPanGestureChain
CJGCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(minimumNumberOfTouches, NSUInteger)
CJGCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION(maximumNumberOfTouches, NSUInteger)

- (CJGPanGestureChain * _Nonnull (^)(CGPoint, UIView * _Nonnull))translation{
    return ^ (CGPoint translation, UIView *view){
        [self enumerateObjectsUsingBlock:^(UIPanGestureRecognizer * _Nonnull obj) {
            [obj setTranslation:translation inView:view];
        }];
        return self;
    };
}
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UIPanGestureRecognizer, CJGPanGestureChain)
#undef CJGCATEGORY_CHAIN_PANGESTURE_IMPLEMENTATION
