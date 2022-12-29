//
//  CJGReplicatorLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGReplicatorLayerChain.h"

#define CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGReplicatorLayerChain *, CAReplicatorLayer)

@implementation CJGReplicatorLayerChain
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceCount, NSInteger)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(preservesDepth, BOOL)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceDelay, CFTimeInterval)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceTransform, CATransform3D)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceColor, CGColorRef)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceRedOffset, float)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceGreenOffset, float)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceBlueOffset, float)
CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION(instanceAlphaOffset, float)
@end
CJGCATEGORY_LAYER_IMPLEMENTATION(CAReplicatorLayer, CJGReplicatorLayerChain)
#undef CJGCATEGORY_CHAIN_REPLICATORLAYER_IMPLEMENTATION
