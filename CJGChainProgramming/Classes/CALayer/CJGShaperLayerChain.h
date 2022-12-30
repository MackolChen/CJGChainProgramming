//
//  CJGShaperLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseLayerChain.h"


NS_ASSUME_NONNULL_BEGIN
@class CJGShaperLayerChain;
@interface CJGShaperLayerChain : CJGBaseLayerChain<CJGShaperLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ path) (CGPathRef path);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ fillColor) (CGColorRef fillColor);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ fillRule) (CAShapeLayerFillRule fillRule);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ strokeColor) (CGColorRef strokeColor);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ strokeStart) (CGFloat strokeStart);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ strokeEnd) (CGFloat strokeEnd);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ lineWidth) (CGFloat lineWidth);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ miterLimit) (CGFloat miterLimit);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ lineCap) (CAShapeLayerLineCap lineCap);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ lineJoin) (CAShapeLayerLineJoin lineJoin);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ lineDashPhase) (CGFloat lineDashPhase);
CJGCATEGORY_CHAIN_PROPERTY CJGShaperLayerChain * (^ lineDashPattern) (NSArray<NSNumber *> * lineDashPattern);
@end

CJGCATEGORY_EXINTERFACE(CAShapeLayer, CJGShaperLayerChain)
NS_ASSUME_NONNULL_END
