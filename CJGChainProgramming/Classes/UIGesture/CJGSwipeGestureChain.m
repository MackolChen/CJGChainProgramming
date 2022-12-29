//
//  CJGSwipeGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGSwipeGestureChain.h"

#define CJGCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGSwipeGestureChainModel *, UISwipeGestureRecognizer)
@implementation CJGSwipeGestureChainModel
CJGCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(numberOfTouchesRequired, NSUInteger)
CJGCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION(direction, UISwipeGestureRecognizerDirection)
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UISwipeGestureRecognizer, CJGSwipeGestureChainModel)
#undef CJGCATEGORY_CHAIN_SWIPEGESTURE_IMPLEMENTATION
