//
//  CJGPanGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGPanGestureChain;
@interface CJGPanGestureChain : CJGGestureChain<CJGPanGestureChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGPanGestureChain * (^ minimumNumberOfTouches) (NSUInteger minimumNumberOfTouches);
CJGCATEGORY_CHAIN_PROPERTY CJGPanGestureChain * (^ maximumNumberOfTouches) (NSUInteger maximumNumberOfTouches);
CJGCATEGORY_CHAIN_PROPERTY CJGPanGestureChain * (^ translation) (CGPoint translation,UIView *view);
@end

CJGCATEGORY_EXINTERFACE(UIPanGestureRecognizer, CJGPanGestureChain)
NS_ASSUME_NONNULL_END
