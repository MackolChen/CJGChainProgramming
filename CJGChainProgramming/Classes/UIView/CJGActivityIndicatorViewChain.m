//
//  CJGActivityIndicatorViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGActivityIndicatorViewChain.h"
#define CJGCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGActivityIndicatorView *,UIActivityIndicatorView)
@implementation CJGActivityIndicatorView

CJGCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(activityIndicatorViewStyle,UIActivityIndicatorViewStyle)
CJGCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(hidesWhenStopped,BOOL)
CJGCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION(color,UIColor *)

- (CJGActivityIndicatorView * _Nonnull (^)(void))startAnimating{
    return ^()
    {
        [self enumerateObjectsUsingBlock:^(UIActivityIndicatorView * _Nonnull obj) {
            [obj startAnimating];
        }];
        return self;
    };
}


- (CJGActivityIndicatorView * _Nonnull (^)(void))stopAnimating{
    return ^()
    {
        [self enumerateObjectsUsingBlock:^(UIActivityIndicatorView * _Nonnull obj) {
            [obj stopAnimating];
        }];
        return self;
    };
}
@end

CJGCATEGORY_VIEW_IMPLEMENTATION(UIActivityIndicatorView, CJGActivityIndicatorView)
#undef CJGCATEGORY_CHAIN_ACTIVITY_IMPLEMENTATION
