//
//  CJGTransFormLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTransFormLayerChain.h"
#define CJGCATEGORY_CHAIN_TRANSFORMLAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGTransFormLayerChain *, CATransformLayer)

@implementation CJGTransFormLayerChain

@end
CJGCATEGORY_LAYER_IMPLEMENTATION(CATransformLayer, CJGTransFormLayerChain)
#undef CJGCATEGORY_CHAIN_TRANSFORMLAYER_IMPLEMENTATION
