//
//  CJGGestureChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"
#import "UIGestureRecognizer+CJGChain.h"

#define CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, id, UIGestureRecognizer)

@implementation CJGGestureChain

- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture modelClass:(nonnull Class)modelClass{
    if (self = [super initWithModelObject:gesture modelClass:modelClass]) {
        
    }
    return self;
}

CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delegate, id<UIGestureRecognizerDelegate>)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(enabled, BOOL)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(cancelsTouchesInView, BOOL)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delaysTouchesBegan, BOOL)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(delaysTouchesEnded, BOOL)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(requiresExclusiveTouchType, BOOL)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedTouchTypes, NSArray<NSNumber *> *)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(allowedPressTypes, NSArray<NSNumber *> *)
CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION(name, NSString *)

- (id  _Nonnull (^)(UIGestureRecognizer * _Nonnull))requireGestureRecognizerToFail{
    return ^ (UIGestureRecognizer *gesture){
        if (gesture) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj requireGestureRecognizerToFail:gesture];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull))addTarget{
    return ^ (id target, SEL action){
        if (target && action) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj addTarget:target action:action];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull))removeTarget{
    return ^ (id target, SEL action){
        if (target) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj removeTarget:target action:action];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(void (^ _Nonnull)(id _Nonnull)))addTargetBlock{
    return ^ (GestureTargetAction action){
        if (action) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj addTargetBlock:action];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(void (^ _Nonnull)(id _Nonnull), NSString * _Nonnull))addTargetBlockWithTag{
    return ^ (GestureTargetAction action, NSString *tag){
        if (action) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj addTargetBlock:action tag:tag];
            }];
        }
        return self;
    };
}

- (id  _Nonnull (^)(NSString * _Nonnull))removeTargetBlockWithTag{
    return ^ (NSString *tag){
        if (tag) {
            [self enumerateObjectsUsingBlock:^(id  _Nonnull obj) {
                [obj removeTargetBlockByTag:tag];
            }];
            
        }
        return self;
    };
}

- (id  _Nonnull (^)(void))removeAllTargetBlock{
    return ^(){
        [self enumerateObjectsUsingBlock:^(UIGestureRecognizer * _Nonnull obj) {
            [obj removeAllTargetBlock];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull))addToSuperView{
    return ^ (UIView *superView){
        if (superView) {
            [self enumerateObjectsUsingBlock:^(UIGestureRecognizer * _Nonnull obj) {
                [superView addGestureRecognizer:obj];
            }];
        }
        return self;
    };
}

- (UIGestureRecognizer *)gesture{
    return self.effectiveObjects.firstObject;
}
@end

#undef CJGCATEGORY_CHAIN_GESTURE_IMPLEMENTATION

