//
//  CJGLongPressGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLongPressGestureChain.h"

#define CJGCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGLongPressGestureChainModel *, UILongPressGestureRecognizer)
@implementation CJGLongPressGestureChainModel
CJGCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(numberOfTapsRequired, NSUInteger)
CJGCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(minimumPressDuration, NSTimeInterval)
CJGCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION(allowableMovement, CGFloat)
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UILongPressGestureRecognizer, CJGLongPressGestureChainModel)
#undef CJGCATEGORY_CHAIN_LONGGESTURE_IMPLEMENTATION
