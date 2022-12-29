//
//  CJGImageViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGImageViewChain.h"
#define CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGImageViewChain *,UIImageView)
@implementation CJGImageViewChain

CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(image, UIImage *);
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedImage, UIImage *);
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlighted, BOOL);
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationImages, NSArray<UIImage *> *)
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedAnimationImages, NSArray<UIImage *> *)
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationDuration, NSTimeInterval)
CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationRepeatCount, NSInteger)

- (CJGImageViewChain * _Nonnull (^)(void))startAnimating{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj) {
            [obj startAnimating];
        }];
        return self;
    };
}

- (CJGImageViewChain * _Nonnull (^)(void))stopAnimating{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj) {
            [obj stopAnimating];
        }];
        return self;
    };
}

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UIImageView, CJGImageViewChain)
#undef CJGCATEGORY_CHAIN_IMAGEVIEW_IMPLEMENTATION
