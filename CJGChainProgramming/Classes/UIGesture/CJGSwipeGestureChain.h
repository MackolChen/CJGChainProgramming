//
//  CJGSwipeGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"

NS_ASSUME_NONNULL_BEGIN

@class CJGSwipeGestureChainModel;
@interface CJGSwipeGestureChainModel : CJGGestureChain<CJGSwipeGestureChainModel *>
CJGCATEGORY_CHAIN_PROPERTY CJGSwipeGestureChainModel * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);
CJGCATEGORY_CHAIN_PROPERTY CJGSwipeGestureChainModel * (^ direction) (UISwipeGestureRecognizerDirection direction);
@end


CJGCATEGORY_EXINTERFACE(UISwipeGestureRecognizer, CJGSwipeGestureChainModel)
NS_ASSUME_NONNULL_END
