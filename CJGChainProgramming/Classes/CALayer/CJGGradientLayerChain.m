//
//  CJGGradientLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGradientLayerChain.h"

#define CJGCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGGradientLayerChain *, CAGradientLayer)

@implementation CJGGradientLayerChain
CJGCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(locations, NSArray<NSNumber *> *)
CJGCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(startPoint, CGPoint)
CJGCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION(endPoint, CGPoint)


- (CJGGradientLayerChain * _Nonnull (^)(NSArray * _Nonnull))colors{
    return ^ (NSArray *colors){
        NSMutableArray *bridgeColors = [NSMutableArray array];
        for (id color in colors) {
            if ([color isKindOfClass:[UIColor class]]) {
                [bridgeColors addObject:(__bridge id)[color CGColor]];
            }else{
                [bridgeColors addObject:color];
            }
        }
        [self enumerateObjectsUsingBlock:^(CAGradientLayer * _Nonnull obj) {
            [obj setColors:bridgeColors];
        }];
        return self;
    };
}
@end
CJGCATEGORY_LAYER_IMPLEMENTATION(CAGradientLayer, CJGGradientLayerChain)
#undef CJGCATEGORY_CHAIN_GRADIENTLAYER_IMPLEMENTATION
