//
//  CJGPinchGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGPinchGestureChainModel;
@interface CJGPinchGestureChainModel : CJGGestureChain<CJGPinchGestureChainModel *>
CJGCATEGORY_CHAIN_PROPERTY CJGPinchGestureChainModel * (^ scale) (CGFloat scale);
@end

CJGCATEGORY_EXINTERFACE(UIPinchGestureRecognizer, CJGPinchGestureChainModel)
NS_ASSUME_NONNULL_END
