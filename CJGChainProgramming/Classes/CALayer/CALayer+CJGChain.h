//
//  CALayer+CJGChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import <QuartzCore/QuartzCore.h>
#import "CJGCALayerChainHeader.h"
NS_ASSUME_NONNULL_BEGIN

@interface CALayer (CJGChain)
CJGCATEGORY_STRONG_PROPERTY CJGLayerChain *(^ addLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGShaperLayerChain *(^ addShaperLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGEmiiterLayerChain *(^ addEmiiterLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGScrollLayerChain *(^ addScrollLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGTextLayerChain *(^ addTextLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGTiledLayerChain *(^ addTiledLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGTransFormLayerChain *(^ addTransFormLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGGradientLayerChain *(^ addGradientLayer)(void);

CJGCATEGORY_STRONG_PROPERTY CJGReplicatorLayerChain *(^ addReplicatorLayer)(void);

@end

NS_ASSUME_NONNULL_END
