//
//  CJGEmiiterLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGEmiiterLayerChain;
@interface CJGEmiiterLayerChain : CJGLayerChain<CJGEmiiterLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterCells) (NSArray<CAEmitterCell *> * emitterCells);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ birthRate) (float birthRate);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ lifetime) (float lifetime);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterPosition) (CGPoint emitterPosition);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterZPosition) (CGFloat emitterZPosition);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterSize) (CGSize emitterSize);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterDepth) (CGFloat emitterDepth);

#ifdef __IPHONE_12_0
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterShape) (CAEmitterLayerEmitterShape emitterShape);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ emitterMode) (CAEmitterLayerEmitterMode emitterMode);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ renderMode) (CAEmitterLayerRenderMode renderMode);

#endif
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ preservesDepth) (BOOL preservesDepth);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ velocity) (float velocity);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ scale) (float scale);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ spin) (float spin);
CJGCATEGORY_CHAIN_PROPERTY CJGEmiiterLayerChain * (^ seed) (unsigned int seed);

@end

CJGCATEGORY_EXINTERFACE(CAEmitterLayer, CJGEmiiterLayerChain)
NS_ASSUME_NONNULL_END
