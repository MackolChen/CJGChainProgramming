//
//  CJGPinchGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGPinchGestureChain.h"
#define CJGCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGPinchGestureChainModel *, UIPinchGestureRecognizer)
@implementation CJGPinchGestureChainModel
CJGCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION(scale, CGFloat)
@end
CJGCATEGORY_GESTURE_IMPLEMENTATION(UIPinchGestureRecognizer, CJGPinchGestureChainModel)
#undef CJGCATEGORY_CHAIN_PINGESTURE_IMPLEMENTATION
