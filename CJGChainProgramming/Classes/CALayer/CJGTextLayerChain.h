//
//  CJGTextLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGTextLayerChain;
@interface CJGTextLayerChain : CJGLayerChain<CJGTextLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ string) (id string);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ font) (CFTypeRef font);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ fontSize) (CGFloat fontSize);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ foregroundColor) (CGColorRef foregroundColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ wrapped) (BOOL wrapped);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ truncationMode) (CATextLayerTruncationMode truncationMode);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ alignmentMode) (CATextLayerAlignmentMode alignmentMode);
CJGCATEGORY_CHAIN_PROPERTY CJGTextLayerChain * (^ allowsFontSubpixelQuantization) (BOOL allowsFontSubpixelQuantization);

@end
CJGCATEGORY_EXINTERFACE(CATextLayer, CJGTextLayerChain)
NS_ASSUME_NONNULL_END
