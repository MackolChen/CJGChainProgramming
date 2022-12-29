//
//  CJGScrollLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGScrollLayerChain.h"

#define CJGCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGScrollLayerChain *, CAScrollLayer)

@implementation CJGScrollLayerChain
CJGCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION(scrollMode, CAScrollLayerScrollMode)

- (CJGScrollLayerChain * _Nonnull (^)(CGRect))scrollToRect{
    return ^ (CGRect rect){
        [self enumerateObjectsUsingBlock:^(CAScrollLayer * _Nonnull obj) {
            [obj scrollToRect:rect];
        }];
        return self;
    };
}

- (CJGScrollLayerChain * _Nonnull (^)(CGPoint))scrollToPoint{
    return ^ (CGPoint point){
        [self enumerateObjectsUsingBlock:^(CAScrollLayer * _Nonnull obj) {
            [obj scrollToPoint:point];
        }];
        return self;
    };
}

@end
CJGCATEGORY_LAYER_IMPLEMENTATION(CAScrollLayer, CJGScrollLayerChain)
#undef CJGCATEGORY_CHAIN_SCROLLLAYER_IMPLEMENTATION
