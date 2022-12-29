//
//  CJGLongPressGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGLongPressGestureChainModel;
@interface CJGLongPressGestureChainModel : CJGGestureChain<CJGLongPressGestureChainModel *>

CJGCATEGORY_CHAIN_PROPERTY CJGLongPressGestureChainModel * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);

CJGCATEGORY_CHAIN_PROPERTY CJGLongPressGestureChainModel * (^ minimumPressDuration) (NSTimeInterval minimumPressDuration);
CJGCATEGORY_CHAIN_PROPERTY CJGLongPressGestureChainModel * (^ allowableMovement) (CGFloat allowableMovement);
@end

CJGCATEGORY_EXINTERFACE(UILongPressGestureRecognizer, CJGLongPressGestureChainModel)
NS_ASSUME_NONNULL_END
