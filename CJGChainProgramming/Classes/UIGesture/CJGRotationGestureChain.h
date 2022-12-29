//
//  CJGRotationGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGRotationGestureChain;
@interface CJGRotationGestureChain : CJGGestureChain<CJGRotationGestureChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGRotationGestureChain * (^ rotation) (CGFloat rotation);
@end

CJGCATEGORY_EXINTERFACE(UIRotationGestureRecognizer, CJGRotationGestureChain)
NS_ASSUME_NONNULL_END
