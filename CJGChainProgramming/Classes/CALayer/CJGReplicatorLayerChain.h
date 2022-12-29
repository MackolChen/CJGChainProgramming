//
//  CJGReplicatorLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGReplicatorLayerChain;
@interface CJGReplicatorLayerChain : CJGLayerChain<CJGReplicatorLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceCount) (NSInteger instanceCount);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ preservesDepth) (BOOL preservesDepth);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceDelay) (CFTimeInterval instanceDelay);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceTransform) (CATransform3D instanceTransform);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceColor) (CGColorRef instanceColor);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceRedOffset) (float instanceRedOffset);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceGreenOffset) (float instanceGreenOffset);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceBlueOffset) (float instanceBlueOffset);
CJGCATEGORY_CHAIN_PROPERTY CJGReplicatorLayerChain * (^ instanceAlphaOffset) (float instanceAlphaOffset);
@end

CJGCATEGORY_EXINTERFACE(CAReplicatorLayer, CJGReplicatorLayerChain)
NS_ASSUME_NONNULL_END
