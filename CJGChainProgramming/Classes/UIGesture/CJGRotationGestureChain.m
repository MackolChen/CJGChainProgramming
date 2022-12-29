//
//  CJGRotationGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGRotationGestureChain.h"
#define CJGCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGRotationGestureChain *, UIRotationGestureRecognizer)
@implementation CJGRotationGestureChain
CJGCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION(rotation, CGFloat)
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UIRotationGestureRecognizer, CJGRotationGestureChain)
#undef CJGCATEGORY_CHAIN_ROTAGESTURE_IMPLEMENTATION
