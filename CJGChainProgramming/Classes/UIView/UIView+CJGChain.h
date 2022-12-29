//
//  UIView+CJGChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGChainDefine.h"
#import "CJGUIViewChainHeader.h"
#import "CJGCALayerChainHeader.h"
NS_ASSUME_NONNULL_BEGIN
@interface UIView (CJGChain)
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;
- (void)removeAllSubViews;
- (UIViewController *)viewController;
//接收响应事件的NavigationController
- (UINavigationController *)navigationController;

- (CGFloat)visibleAlpha;
- (UIImage *)snapshotImage;
- (UIImage *)snapshotImageAfterScreenUpdates:(BOOL)afterUpdates;
- (NSData *)snapshotPDF;
#pragma mark - convert -
- (CGPoint)convertPointTo:(CGPoint)point :(UIView *)view;
- (CGPoint)convertPointFrom:(CGPoint)point :(UIView *)view;
- (CGRect)convertRectTo:(CGRect)rect :(UIView *)view;
- (CGRect)convertRectFrom:(CGRect)rect :(UIView *)view;
#pragma mark - draw -
- (CAShapeLayer *)setCornerRadiusAngle:(UIRectCorner)corner cornerSize:(CGSize)size;
- (CALayer *)setLayerShadow:(UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;
- (CALayer *)setLayerShadow:(UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor;

CJGCATEGORY_STRONG_PROPERTY CJGViewChain *(^ addView)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGLabelChain *(^ addLabel)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGImageViewChain *(^ addImageView)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGControlChain *(^ addControl)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGTextFieldChain *(^ addTextField)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGButtonChain *(^ addButton)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGSwitchChain *(^ addSwitch)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGScrollViewChain *(^ addScrollView)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGTextViewChain *(^ addTextView)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGTableViewChain *(^ addTableView)(NSInteger tag);
CJGCATEGORY_STRONG_PROPERTY CJGCollectionViewChain *(^ addCollectionView)(NSInteger tag);
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
