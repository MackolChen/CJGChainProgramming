//
//  CJGBaseLayerChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGChainBase.h"

#define CJGCATEGORY_CHAIN_LAYERCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass) CJGCATEGORY_CHAIN_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass)

#define CJGCATEGORY_LAYER_IMPLEMENTATION(CJGClass, modelType)\
@implementation CJGClass (EXT)\
- (modelType *)makeChain{\
    return [[modelType alloc] initWithLayer:self modelClass:[CJGClass class]];\
}\
@end
NS_ASSUME_NONNULL_BEGIN


typedef void(^CJGAssignLayerLoad)(__kindof CALayer *layer);
@interface CJGBaseLayerChain <__covariant  ObjectType> : CJGChainBase<  ObjectType>

- (instancetype)initWithLayer:(CALayer *)layer modelClass:(Class)modelClass;

@property (nonatomic, strong, readonly) __kindof CALayer * layer;

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bounds) (CGRect bounds);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ position) (CGPoint position);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ zPosition) (CGFloat zPosition);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPoint) (CGPoint anchorPoint);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPointZ) (CGFloat anchorPointZ);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ transform) (CATransform3D transform);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ affineTransform) (CGAffineTransform affineTransform);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ frame) (CGRect frame);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ hidden) (BOOL hidden);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ doubleSided) (BOOL doubleSided);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ geometryFlipped) (BOOL geometryFlipped);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeFromSuperlayer) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperLayer) (CALayer * layer);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerBelow) (CALayer *layer, CALayer * below);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerIndex) (CALayer *layer, NSInteger index);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSublayerAbove) (CALayer *layer, CALayer *above);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ relpaceSublayer) (CALayer *oldLayer, CALayer *newLayer);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setToMask) (CALayer * toLayer);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ mask) (CALayer * maskLayer);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ masksToBounds) (BOOL masksToBounds);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contents) (id contents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsRect) (CGRect contentsRect);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsGravity) (CALayerContentsGravity contentsGravity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsScale) (CGFloat contentsScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsCenter) (CGRect contentsCenter);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentsFormat) (CALayerContentsFormat contentsFormat) API_AVAILABLE(ios(10.0));
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ minificationFilter) (CALayerContentsFilter minificationFilter);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ magnificationFilter) (CALayerContentsFilter magnificationFilter);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ minificationFilterBias) (float minificationFilterBias);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ opaque) (BOOL opaque);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ needsDisplayOnBoundsChange) (BOOL needsDisplayOnBoundsChange);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ drawsAsynchronously) (BOOL drawsAsynchronously);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ edgeAntialiasingMask) (CAEdgeAntialiasingMask edgeAntialiasingMask);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ allowsEdgeAntialiasing) (BOOL allowsEdgeAntialiasing);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundColor) (CGColorRef backgroundColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ cornerRadius) (CGFloat cornerRadius);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ maskedCorners) (CACornerMask maskedCorners) API_AVAILABLE(ios(11.0));
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ borderWidth) (CGFloat borderWidth);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ borderColor) (CGColorRef borderColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ opacity) (float opacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ allowsGroupOpacity) (BOOL allowsGroupOpacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ compositingFilter) (id compositingFilter);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ filters) (NSArray* filters);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundFilters) (NSArray* backgroundFilters);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shouldRasterize) (BOOL shouldRasterize);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ rasterizationScale) (CGFloat rasterizationScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowColor) (CGColorRef shadowColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOpacity) (float shadowOpacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOffset) (CGSize shadowOffset);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowRadius) (CGFloat shadowRadius);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowPath) (CGPathRef shadowPath);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ actions) (NSDictionary<NSString *, id<CAAction>> * actions);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addAnimation) (CAAnimation *animation, NSString *key);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAnimation) (NSString * key);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAllAnimation) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ name) (NSString * name);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id <CALayerDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ style) (NSDictionary * style);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ assignTo) (CJGAssignLayerLoad assignTo);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadow)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity);

@end

NS_ASSUME_NONNULL_END
