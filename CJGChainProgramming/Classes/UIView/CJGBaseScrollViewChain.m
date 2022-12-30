//
//  CJGBaseScrollViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseScrollViewChain.h"
#import "UIScrollView+CJGChain.h"
#define CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType,  id ,UIScrollView)
@implementation CJGBaseScrollViewChain
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(delegate, id<UIScrollViewDelegate>)

- (id _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [self enumerateObjectsUsingBlock:^(UIScrollView * _Nonnull obj) {
                [obj adJustedContentIOS11];
            }];
        }
        return self;
    };
}

CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentSize, CGSize)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentOffset, CGPoint)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentInset, UIEdgeInsets)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(bounces, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(alwaysBounceVertical, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(alwaysBounceHorizontal, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(pagingEnabled, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(scrollEnabled, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(showsHorizontalScrollIndicator, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(showsVerticalScrollIndicator, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(scrollsToTop, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(indicatorStyle, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(scrollIndicatorInsets, UIEdgeInsets)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(directionalLockEnabled, BOOL)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(minimumZoomScale, CGFloat)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(zoomScale, CGFloat)
CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION(maximumZoomScale, CGFloat)

- (id  _Nonnull (^)(CGPoint, BOOL))contentOffsetAnimated{
    return ^ (CGPoint point, BOOL animated){
        [self enumerateObjectsUsingBlock:^(UIScrollView * _Nonnull obj) {
            [obj setContentOffset:point animated:animated];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(CGRect, BOOL))contentOffsetToVisible{
    return ^ (CGRect rect, BOOL animated){
        [self enumerateObjectsUsingBlock:^(UIScrollView * _Nonnull obj) {
            [obj scrollRectToVisible:rect animated:animated];
        }];
        return self;
    };
}
@end
#undef CJGCATEGORY_CHAIN_SCROLLVIEW_IMPLEMENTATION
