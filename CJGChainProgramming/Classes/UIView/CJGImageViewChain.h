//
//  CJGImageViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGBaseViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGImageViewChain;
@interface CJGImageViewChain : CJGBaseViewChain<CJGImageViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ image)(UIImage *image);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ highlightedImage)(UIImage *highlightedImage);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ highlighted)(BOOL highlighted);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ animationImages)(NSArray <UIImage *> * animationImages);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ highlightedAnimationImages)(NSArray <UIImage *> * highlightedAnimationImages);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ startAnimating)(void);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ stopAnimating)(void);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ animationRepeatCount)(NSInteger animationRepeatCount);
CJGCATEGORY_CHAIN_PROPERTY CJGImageViewChain *(^ animationDuration)(NSTimeInterval animationDuration);
@end
CJGCATEGORY_EXINTERFACE(UIImageView, CJGImageViewChain)
NS_ASSUME_NONNULL_END
