//
//  CJGBaseViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGChainBase.h"
#import <UIKit/UIKit.h>
#define CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass) CJGCATEGORY_CHAIN_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass)
#define CJGCATEGORY_VIEW_IMPLEMENTATION(CJGClass, modelType)\
@interface modelType(EffectiveEXT)\
@property (nonatomic, strong, readonly) NSMutableArray <CJGClass *>* effectiveObjects;\
@end\
@implementation CJGClass (EXT)\
- (modelType *)makeChain{\
    return [[modelType alloc] initWithTag:self.tag andView:self modelClass:[CJGClass class]];\
}\
@end
NS_ASSUME_NONNULL_BEGIN
typedef void(^CJGAssignViewLoad)(__kindof UIView *view);
@interface CJGBaseViewChain <__covariant  ObjectType> : CJGChainBase
- (instancetype)initWithTag:(NSInteger)tag andView:(UIView *)view modelClass:(Class)modelClass;
CJGCATEGORY_ASSIGN_PROPERTY NSInteger tag;
CJGCATEGORY_STRONG_PROPERTY __kindof UIView *view;
CJGCATEGORY_ASSIGN_PROPERTY Class viewClass;
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bounds) (CGRect frame);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ frame) (CGRect frame);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ origin) (CGPoint origin);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ x) (CGFloat x);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ y) (CGFloat y);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ size) (CGSize size);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ width) (CGFloat width);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ height) (CGFloat height);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ center) (CGPoint center);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ centerX) (CGFloat centerX);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ centerY) (CGFloat centerY);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ top) (CGFloat top);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ left) (CGFloat left);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bottom) (CGFloat bottom);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ right) (CGFloat right);
CJGCATEGORY_CHAIN_PROPERTY CGFloat (^ visibleAlpha) (void);
CJGCATEGORY_CHAIN_PROPERTY CGRect (^ convertRectTo) (CGRect rect, UIView * toView);
CJGCATEGORY_CHAIN_PROPERTY CGRect (^ convertRectFrom) (CGRect rect, UIView * toView);
CJGCATEGORY_CHAIN_PROPERTY CGPoint (^ convertPointTo) (CGPoint point, UIView * toView);
CJGCATEGORY_CHAIN_PROPERTY CGPoint (^ convertPointFrom) (CGPoint point, UIView * toView);
CJGCATEGORY_CHAIN_PROPERTY UIView *(^ viewWithTag) (NSInteger tag);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ backgroundColor) (UIColor *backgroundColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ tintColor) (UIColor *tintColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ alpha) (CGFloat alpha);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ hidden) (BOOL hidden);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ clipsToBounds) (BOOL clipsToBounds);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ opaque) (BOOL opaque);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ userInteractionEnabled) (BOOL userInteractionEnabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ multipleTouchEnabled) (BOOL multipleTouchEnabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ endEditing) (BOOL endEditing);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentMode) (UIViewContentMode contentMode);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ transform) (CGAffineTransform transform);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ autoresizingMask) (UIViewAutoresizing autoresizingMask);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ autoresizesSubviews) (BOOL autoresizesSubviews);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ makeTag) (NSInteger tag);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperView) (UIView *superView);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addSubView) (UIView *subView);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addGesture) (UIGestureRecognizer *gesture);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addGestureBlock) (void (^ gestureBlock) (id gesture));
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeGesture) (UIGestureRecognizer *gesture);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addGestureWithTag) (UIGestureRecognizer *gesture, NSString *tag);
CJGCATEGORY_STRONG_PROPERTY UIGestureRecognizer * (^ getGestureByTag) (NSString * tag);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeGestureByTag) (NSString *tag);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bringSubViewToFront) (UIView *view);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ sendSubViewToBack) (UIView *view);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ exchangeSubView) (UIView *front, UIView *backView);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ exchangeSubviewWithIndex) (NSInteger front, NSInteger back);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewBelow) (UIView* below, UIView * above);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewAbove) (UIView* above, UIView * below);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ insertSubViewIndex) (UIView* above, NSInteger index);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shouldRasterize)(BOOL shouldRasterize);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ layerOpacity)(float layerOpacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ layerBackGroundColor)(UIColor * backgroundColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ layerOpaque)(BOOL opaque);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ rasterizationScale)(CGFloat rasterizationScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ masksToBounds)(BOOL masksToBounds);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ cornerRadius)(CGFloat cornerRadius);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ border)(CGFloat borderWidth, UIColor *borderColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ borderWidth)(CGFloat borderWidth);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ borderColor)(CGColorRef borderColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ zPosition)(CGFloat zPosition);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ anchorPoint)(CGPoint anchorPoint);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadow)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowColor)(CGColorRef shadowColor);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOpacity)(CGFloat shadowOpacity);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowOffset)(CGSize shadowOffset);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowRadius)(CGFloat shadowRadius);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ layerTransform)(CATransform3D transform);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ shadowPath) (CGPathRef shadowPath);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bringOwnAtFirst)(void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ assignTo)(CJGAssignViewLoad assignTo);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ sizeToFit) (void);
CJGCATEGORY_CHAIN_PROPERTY CGSize (^ sizeToFitSize) (CGSize size);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeFormSuperView) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ layoutIfNeeded) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsLayout) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsDisplay) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setNeedsDisplayRect) (CGRect rect);
@end
@class MASConstraintMaker;
typedef void(^CJGMasonryLoad)(MASConstraintMaker *make);
@interface CJGBaseViewChain <ObjectType> (Masonry)
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ makeMasonry)(CJGMasonryLoad constraints);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ updateMasonry)(CJGMasonryLoad constraints);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ remakeMasonry)(CJGMasonryLoad constraints);
@end

NS_ASSUME_NONNULL_END
