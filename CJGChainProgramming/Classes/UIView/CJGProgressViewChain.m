//
//  CJGProgressViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGProgressViewChain.h"
#define CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGProgressViewChain *,UIProgressView)
CJGCATEGORY_VIEW_IMPLEMENTATION(UIProgressView, CJGProgressViewChain)
@implementation CJGProgressViewChain
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressViewStyle, UIProgressViewStyle)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progress, float)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressTintColor, UIColor*)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(trackTintColor, UIColor*)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(progressImage, UIImage*)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(trackImage, UIImage*)
CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION(observedProgress, NSProgress *)

- (CJGProgressViewChain * _Nonnull (^)(float, BOOL))setProgressAnimated{
    return ^ (float p, BOOL a){
        [self enumerateObjectsUsingBlock:^(UIProgressView * _Nonnull obj) {
            [obj setProgress:p animated:a];
        }];
        return self;
    };
}

@end
#undef CJGCATEGORY_CHAIN_PROGRESS_IMPLEMENTATION
