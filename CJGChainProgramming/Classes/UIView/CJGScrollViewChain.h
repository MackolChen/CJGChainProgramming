//
//  CJGScrollViewChain.h
//  CJGChainProgramming
//
//  Created by Chen Jinguo on 2022/12/30.
//

#import "CJGBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGScrollViewChain,UIScrollView;
@interface CJGScrollViewChain : CJGBaseScrollViewChain<CJGScrollViewChain *>

@end
CJGCATEGORY_EXINTERFACE(UIScrollView, CJGScrollViewChain)

NS_ASSUME_NONNULL_END
