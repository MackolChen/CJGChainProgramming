//
//  CJGTextLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTextLayerChain.h"

#define CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGTextLayerChain *, CATextLayer)

@implementation CJGTextLayerChain
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(string, id)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(font, CFTypeRef)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(fontSize, CGFloat)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(foregroundColor, CGColorRef)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(wrapped, BOOL)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(truncationMode, CATextLayerTruncationMode)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(alignmentMode, CATextLayerAlignmentMode)
CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION(allowsFontSubpixelQuantization, BOOL)

@end
CJGCATEGORY_LAYER_IMPLEMENTATION(CATextLayer, CJGTextLayerChain)
#undef CJGCATEGORY_CHAIN_TEXTLAYER_IMPLEMENTATION
