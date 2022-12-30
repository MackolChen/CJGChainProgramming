//
//  CJGBaseScrollViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface CJGBaseScrollViewChain <__covariant ObjectType>: CJGBaseViewChain<ObjectType>
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentSize) (CGSize contentSize);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffset) (CGPoint contentOffset);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentInset) (UIEdgeInsets contentInset);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ bounces) (BOOL bounces);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ alwaysBounceVertical) (BOOL alwaysBounceVertical);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ alwaysBounceHorizontal) (BOOL alwaysBounceHorizontal);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ pagingEnabled) (BOOL pagingEnabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollEnabled) (BOOL scrollEnabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ showsHorizontalScrollIndicator) (BOOL showsHorizontalScrollIndicator);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ showsVerticalScrollIndicator) (BOOL showsVerticalScrollIndicator);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollsToTop) (BOOL scrollsToTop);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ indicatorStyle) (BOOL indicatorStyle);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ scrollIndicatorInsets) (UIEdgeInsets scrollIndicatorInsets);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ directionalLockEnabled) (BOOL directionalLockEnabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ minimumZoomScale) (CGFloat minimumZoomScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ maximumZoomScale) (CGFloat maximumZoomScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ zoomScale) (CGFloat zoomScale);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffsetAnimated)(CGPoint point, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentOffsetToVisible)(CGRect rect, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id <UIScrollViewDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ adJustedContentIOS11)(void);
@end

NS_ASSUME_NONNULL_END
