//
//  CJGTiledLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLayerChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTiledLayerChain;
@interface CJGTiledLayerChain : CJGLayerChain<CJGTiledLayerChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGTiledLayerChain * (^ levelsOfDetail) (size_t levelsOfDetail);
CJGCATEGORY_CHAIN_PROPERTY CJGTiledLayerChain * (^ levelsOfDetailBias) (size_t levelsOfDetailBias);
CJGCATEGORY_CHAIN_PROPERTY CJGTiledLayerChain * (^ tileSize) (CGSize tileSize);
@end

CJGCATEGORY_EXINTERFACE(CATiledLayer, CJGTiledLayerChain)
NS_ASSUME_NONNULL_END
