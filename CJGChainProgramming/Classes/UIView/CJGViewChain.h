//
//  CJGViewChain.h
//  CJGChainProgramming
//
//  Created by Chen Jinguo on 2022/12/30.
//

#import "CJGBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGViewChain,UIView;
@interface CJGViewChain : CJGBaseViewChain<CJGViewChain *>

@end
CJGCATEGORY_EXINTERFACE(UIView, CJGViewChain)

NS_ASSUME_NONNULL_END
