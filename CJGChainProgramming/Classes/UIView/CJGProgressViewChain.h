//
//  CJGProgressViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGProgressViewChain;
@interface CJGProgressViewChain : CJGViewChain<CJGProgressViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ progressViewStyle) (UIProgressViewStyle progressViewStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ progress) (float progress);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ progressTintColor) (UIColor* progressTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ trackTintColor) (UIColor* trackTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ progressImage) (UIImage* progressImage);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ trackImage) (UIImage* trackImage);
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ observedProgress) (NSProgress * observedProgress) API_AVAILABLE(ios(9.0));
CJGCATEGORY_CHAIN_PROPERTY CJGProgressViewChain * (^ setProgressAnimated) (float progress, BOOL animated);
@end

CJGCATEGORY_EXINTERFACE(UIProgressView, CJGProgressViewChain)
NS_ASSUME_NONNULL_END
