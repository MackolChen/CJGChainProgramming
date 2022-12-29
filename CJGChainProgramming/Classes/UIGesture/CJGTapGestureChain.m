//
//  CJGTapGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTapGestureChain.h"
#define CJGCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGTapGestureChain *, UITapGestureRecognizer)
@implementation CJGTapGestureChain
CJGCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION(numberOfTapsRequired,NSUInteger)
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UITapGestureRecognizer, CJGTapGestureChain)
#undef CJGCATEGORY_CHAIN_TAPGESTURE_IMPLEMENTATION
