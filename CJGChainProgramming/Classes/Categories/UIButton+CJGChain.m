//
//  UIButton+CJGChain.m
//  CJGChain
//
//  Created by maxl on 2018/12/18.
//  Copyright © 2018 CJG. All rights reserved.
//

#import "UIButton+CJGChain.h"
#import <objc/message.h>
#import <time.h>

static const void *CJGButtonRuntimeLimitTasks         = &CJGButtonRuntimeLimitTasks;
static const void *CJGButtonRuntimeLimitTapBlock      = &CJGButtonRuntimeLimitTapBlock;
static const void *CJGButtonRuntimeLimitTapTimes      = &CJGButtonRuntimeLimitTapTimes;
static const void *CJGButtonRuntimeLimitTapLastTimes  = &CJGButtonRuntimeLimitTapLastTimes;
static const void *CJGButtonRuntimeLimitTapSpaceTimes = &CJGButtonRuntimeLimitTapSpaceTimes;
static const void *CJGButtonRuntimeLimitIsStop        = &CJGButtonRuntimeLimitIsStop;

static NSString *UI_swizzleButtonMethodName = @"CJG_UI_swizzleButtonLimitTimeMethod";

static inline void UI_swizzleButtonIfNeed(Class swizzleClass){
    @synchronized (swizzleClass) {
        if (class_getMethodImplementation(swizzleClass, NSSelectorFromString(UI_swizzleButtonMethodName)) !=_objc_msgForward) return;
        class_addMethod(swizzleClass, NSSelectorFromString(UI_swizzleButtonMethodName), imp_implementationWithBlock(^(id object,SEL sel){}), "v@:");
        SEL buttonTapSelector = sel_registerName("_sendActionsForEvents:withEvent:");
        __block void (* oldImp) (__unsafe_unretained id, SEL,UIControlEvents,id) = NULL;
        id newImpBlock = ^ (__unsafe_unretained UIButton* self,UIControlEvents events, id a){
            if (events & UIControlEventTouchUpInside) {
                if (objc_getAssociatedObject(self, CJGButtonRuntimeLimitIsStop)) return;
                id spaceTime = objc_getAssociatedObject(self, CJGButtonRuntimeLimitTapSpaceTimes);
                if (spaceTime) {
                   NSTimeInterval spaceTimef = [spaceTime doubleValue];
                    id lastTime = objc_getAssociatedObject(self, CJGButtonRuntimeLimitTapLastTimes);
                    NSTimeInterval currentTime = time(NULL);
                    if (lastTime) {
                        if (currentTime - [lastTime doubleValue] < spaceTimef) return;
                    }
                    objc_setAssociatedObject(self, CJGButtonRuntimeLimitTapLastTimes, @(currentTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
                }
                CJGButtonLimitTimesTapBlock block = objc_getAssociatedObject(self, CJGButtonRuntimeLimitTapBlock);
                if (block) {
                    NSUInteger tapTimes = [objc_getAssociatedObject(self, CJGButtonRuntimeLimitTapTimes) integerValue];
                    tapTimes ++;
                    objc_setAssociatedObject(self, CJGButtonRuntimeLimitTapTimes, @(tapTimes), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
                    BOOL stop = NO;
                    block(tapTimes,&stop,self);
                    if (stop) {
                        objc_setAssociatedObject(self, CJGButtonRuntimeLimitIsStop, @(stop), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
                        return;
                    }
                }
            }
            if (oldImp == NULL) {
                struct objc_super supperInfo = {
                    .receiver = self,
                    .super_class = class_getSuperclass(swizzleClass)
                };
                ((void (*) (struct objc_super *, SEL,UIControlEvents,id))objc_msgSendSuper)(&supperInfo, buttonTapSelector,events,a);
            }else{
                oldImp(self,buttonTapSelector,events,a);
            }
        };
        Method buttonTapMethod = class_getInstanceMethod(swizzleClass, buttonTapSelector);
        IMP newImp = imp_implementationWithBlock(newImpBlock);
        if (!class_addMethod(swizzleClass, buttonTapSelector, newImp, method_getTypeEncoding(buttonTapMethod))) {
            oldImp = (__typeof__ (oldImp))method_setImplementation(buttonTapMethod, newImp);
        }
    }
}

@implementation UIButton (CJGChain)

- (void)imageDirection:(CJGButtonImageDirection)direction space:(CGFloat)space{
    CGFloat imageWidth, imageHeight, textWidth, textHeight, x, y;
    imageWidth = self.currentImage.size.width;
    imageHeight = self.currentImage.size.height;
    [self.titleLabel sizeToFit];
    textWidth = self.titleLabel.frame.size.width;
    textHeight = self.titleLabel.frame.size.height;
    space = space / 2;
    switch (direction) {
        case CJGButtonImageDirectionTop:{
            x = textHeight / 2 + space;
            y = textWidth / 2;
            self.imageEdgeInsets = UIEdgeInsetsMake(-x, y, x, - y);
            x = imageHeight / 2 + space;
            y = imageWidth / 2;
            self.titleEdgeInsets = UIEdgeInsetsMake(x, - y, - x, y);
        }
            break;
        case CJGButtonImageDirectionBottom:{
            x = textHeight / 2 + space;
            y = textWidth / 2;
            self.imageEdgeInsets = UIEdgeInsetsMake(x, y, -x, - y);
            x = imageHeight / 2 + space;
            y = imageWidth / 2;
            self.titleEdgeInsets = UIEdgeInsetsMake(-x, - y, x, y);
        }
            break;
        case CJGButtonImageDirectionLeft:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -space,0, space);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space , 0, - space);
        }
            break;
        case CJGButtonImageDirectionRight:{
            self.imageEdgeInsets = UIEdgeInsetsMake(0, space + textWidth, 0, - (space + textWidth));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(space + imageWidth), 0, (space + imageWidth));
        }
            break;
        default:
            break;
    }
}


- (UIButton * _Nonnull (^)(CJGButtonLimitTimesTapBlock _Nonnull))buttonTapTime{
    return ^(CJGButtonLimitTimesTapBlock block){
        if (block != nil) {
            UI_swizzleButtonIfNeed(object_getClass(self));
        }
        objc_setAssociatedObject(self, CJGButtonRuntimeLimitTapBlock, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
        return self;
    };
}

- (UIButton * _Nonnull (^)(NSTimeInterval))tapSpaceTime{
    return ^(NSTimeInterval time){
        UI_swizzleButtonIfNeed(object_getClass(self));
        objc_setAssociatedObject(self, CJGButtonRuntimeLimitTapSpaceTimes, @(time), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        return self;
    };
}

- (void)cancelRecordTime{
    if (!objc_getAssociatedObject(self, CJGButtonRuntimeLimitTapLastTimes)) return;
    objc_setAssociatedObject(self, CJGButtonRuntimeLimitTapLastTimes, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
