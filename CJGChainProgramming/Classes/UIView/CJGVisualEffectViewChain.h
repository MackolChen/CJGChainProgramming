//
//  CJGVisualEffectViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGVisualEffectViewChain;
@interface CJGVisualEffectViewChain : CJGBaseViewChain<CJGVisualEffectViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGVisualEffectViewChain * (^ effect) (UIVisualEffect * effect);
@end

CJGCATEGORY_EXINTERFACE(UIVisualEffectView, CJGVisualEffectViewChain)
NS_ASSUME_NONNULL_END
