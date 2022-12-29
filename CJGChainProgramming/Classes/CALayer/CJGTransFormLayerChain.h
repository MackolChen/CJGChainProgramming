//
//  CJGTransFormLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTransFormLayerChain;
@interface CJGTransFormLayerChain : CJGLayerChain<CJGTransFormLayerChain *>

@end

CJGCATEGORY_EXINTERFACE(CATransformLayer, CJGTransFormLayerChain)
NS_ASSUME_NONNULL_END
