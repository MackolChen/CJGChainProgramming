//
//  CJGGradientLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGGradientLayerChain;
@interface CJGGradientLayerChain : CJGLayerChain<CJGGradientLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGGradientLayerChain * (^ colors) (NSArray * colors);
CJGCATEGORY_CHAIN_PROPERTY CJGGradientLayerChain * (^ locations) (NSArray<NSNumber *> * locations);
CJGCATEGORY_CHAIN_PROPERTY CJGGradientLayerChain * (^ startPoint) (CGPoint startPoint);
CJGCATEGORY_CHAIN_PROPERTY CJGGradientLayerChain * (^ endPoint) (CGPoint endPoint);
@end

CJGCATEGORY_EXINTERFACE(CAGradientLayer, CJGGradientLayerChain)
NS_ASSUME_NONNULL_END
