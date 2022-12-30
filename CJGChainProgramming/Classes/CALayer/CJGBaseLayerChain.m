//
//  CJGBaseLayerChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseLayerChain.h"


#define CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, id, CALayer)

@implementation CJGBaseLayerChain

- (instancetype)initWithLayer:(CALayer *)layer modelClass:(nonnull Class)modelClass{
    if (self = [super initWithModelObject:layer modelClass:modelClass]) {
        
    }
    return self;
}

CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(bounds, CGRect)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(frame, CGRect)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(position, CGPoint)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(anchorPoint, CGPoint)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(zPosition, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(anchorPointZ, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(rasterizationScale, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(transform, CATransform3D)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(affineTransform, CGAffineTransform)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(hidden, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(doubleSided, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(geometryFlipped, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(masksToBounds, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(mask, CALayer *)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contents, id)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsRect, CGRect)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsGravity, CALayerContentsGravity)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsScale, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsCenter, CGRect)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(contentsFormat, CALayerContentsFormat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(minificationFilter, CALayerContentsFilter)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(magnificationFilter, CALayerContentsFilter)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(minificationFilterBias, float)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(opaque, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(needsDisplayOnBoundsChange, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(drawsAsynchronously, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(edgeAntialiasingMask, CAEdgeAntialiasingMask)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(allowsEdgeAntialiasing, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(backgroundColor, CGColorRef)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(cornerRadius, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(maskedCorners, CACornerMask)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(borderWidth, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(borderColor, CGColorRef)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(opacity, float)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(allowsGroupOpacity, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(compositingFilter, id)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(filters, NSArray*)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(backgroundFilters, NSArray*)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shouldRasterize, BOOL)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowColor, CGColorRef)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowOpacity, float)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowOffset, CGSize)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowRadius, CGFloat)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(shadowPath, CGPathRef)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(name, NSString *)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(delegate, id <CALayerDelegate>)
CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION(style, NSDictionary *)

- (id  _Nonnull (^)( NSDictionary<NSString *,id<CAAction>>  * _Nonnull))actions{
    return ^ (NSDictionary<NSString *,id<CAAction>> * dic){
        [self enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj) {
            obj.actions = dic;
        }];
        return self;
    };
}

- (id (^)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity))shadow
{
    return ^ id (CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity) {
        [self enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj) {
            [obj setShadowOffset:shadowOffset];
            [obj setShadowRadius:shadowRadius];
            [obj setShadowColor:shadowColor.CGColor];
            [obj setShadowOpacity:shadowOpacity];
        }];
        
        return self;
    };
}

- (id  _Nonnull (^)(void))removeFromSuperlayer{
    return ^(){
        [self enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj) {
            [obj removeFromSuperlayer];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull))addToSuperLayer{
    return ^ (CALayer *layer){
        [self enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj) {
            [layer addSublayer:obj];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))insertSublayerBelow{
    return ^ (CALayer *layer, CALayer *belowLayer){
        [self.layer insertSublayer:layer below:belowLayer];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))insertSublayerAbove{
    return ^ (CALayer *layer, CALayer *above){
        [self.layer insertSublayer:layer above:above];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, NSInteger))insertSublayerIndex{
    return ^ (CALayer *layer, NSInteger index){
        [self.layer insertSublayer:layer atIndex:(unsigned)index];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull, CALayer * _Nonnull))relpaceSublayer{
    return ^ (CALayer *oldLayer, CALayer *newLayer){
        [self enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj) {
            [obj replaceSublayer:oldLayer with:newLayer];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CALayer * _Nonnull))setToMask{
    return ^ (CALayer *layer){
        [self enumerateObjectsUsingBlock:^(CALayer *  _Nonnull obj) {
            layer.mask = obj;
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CAAnimation * _Nonnull, NSString * _Nonnull))addAnimation{
    return ^ (CAAnimation *ani, NSString *key){
        if (ani && key) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj addAnimation:ani forKey:key];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(NSString * _Nonnull))removeAnimation{
    return ^ (NSString *key){
        if (key) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj removeAnimationForKey:key];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(void))removeAllAnimation{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
            [obj removeAllAnimations];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CJGAssignLayerLoad _Nonnull))assignTo{
    return ^ (void (^assignTo)(id layer)){
        if (assignTo) {
            assignTo(self.layer);
        }
        assignTo = nil;
        return self;
    };
}

- (CALayer *)layer{
    return self.effectiveObjects.firstObject;
}

@end

#undef CJGCATEGORY_CHAIN_BASELAYER_IMPLEMENTATION
