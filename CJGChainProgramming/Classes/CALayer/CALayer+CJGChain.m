//
//  CALayer+CJGChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CALayer+CJGChain.h"

#define CJGCATEGORY_ADDSUBLAYER(method, ModelClass, LayerClass)\
- (ModelClass * _Nonnull (^)(void))method{\
return ^ (){\
LayerClass *layer = [LayerClass layer];\
ModelClass *chainModel = [[ModelClass alloc] initWithLayer:layer modelClass:[LayerClass class]];\
[self addSublayer:layer];\
return chainModel;\
};\
}
@implementation CALayer (CJGChain)
CJGCATEGORY_ADDSUBLAYER(addLayer, CJGLayerChain, CALayer)
CJGCATEGORY_ADDSUBLAYER(addShaperLayer, CJGShaperLayerChain, CAShapeLayer)
CJGCATEGORY_ADDSUBLAYER(addEmiiterLayer, CJGEmiiterLayerChain, CAEmitterLayer)
CJGCATEGORY_ADDSUBLAYER(addScrollLayer, CJGScrollLayerChain, CAScrollLayer)
CJGCATEGORY_ADDSUBLAYER(addTextLayer, CJGTextLayerChain, CATextLayer)
CJGCATEGORY_ADDSUBLAYER(addTiledLayer, CJGTiledLayerChain, CATiledLayer)
CJGCATEGORY_ADDSUBLAYER(addTransFormLayer, CJGTransFormLayerChain, CATransformLayer)
CJGCATEGORY_ADDSUBLAYER(addGradientLayer, CJGGradientLayerChain, CAGradientLayer)
CJGCATEGORY_ADDSUBLAYER(addReplicatorLayer, CJGReplicatorLayerChain, CAReplicatorLayer)
@end
#undef CJGCATEGORY_ADDSUBLAYER
