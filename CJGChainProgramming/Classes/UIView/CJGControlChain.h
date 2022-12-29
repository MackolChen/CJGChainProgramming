//
//  CJGControlChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGControlChain;
typedef void(^CJGTargetActionBlock)(__kindof UIControl *sender);
@interface CJGControlChain <__covariant ObjectType>: CJGViewChain<ObjectType>
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ enabled)(BOOL enabled);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ selected)(BOOL selected);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ highlighted)(BOOL highlighted);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ contentHorizontalAlignment)(UIControlContentHorizontalAlignment contentHorizontalAlignment);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addTargetBlock)(CJGTargetActionBlock addTargetBlock, UIControlEvents controlEvents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setTargetBlock)(CJGTargetActionBlock addTargetBlock, UIControlEvents controlEvents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addTarget)(id target, SEL action, UIControlEvents controlEvents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ setTarget)(id target, SEL action, UIControlEvents controlEvents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTarget) (id target,SEL action, UIControlEvents controlEvents);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAllTarget)(void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAllTargetBlock)(UIControlEvents controlEvents);
@end
CJGCATEGORY_EXINTERFACE(UIControl, CJGControlChain)
NS_ASSUME_NONNULL_END
