//
//  CJGScrollLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGScrollLayerChain;
@interface CJGScrollLayerChain : CJGBaseLayerChain<CJGScrollLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGScrollLayerChain * (^ scrollToPoint) (CGPoint point);
CJGCATEGORY_CHAIN_PROPERTY CJGScrollLayerChain * (^ scrollToRect) (CGRect rect);
CJGCATEGORY_CHAIN_PROPERTY CJGScrollLayerChain * (^ scrollMode) (CAScrollLayerScrollMode scrollMode);
@end

CJGCATEGORY_EXINTERFACE(CAScrollLayer, CJGScrollLayerChain)
NS_ASSUME_NONNULL_END
