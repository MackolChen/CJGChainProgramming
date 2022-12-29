//
//  CJGControlChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGControlChain.h"
#import "UIControl+CJGChain.h"
#define CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, id ,UIControl)
@implementation CJGControlChain
CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(enabled, BOOL)
CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(selected, BOOL)
CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(highlighted, BOOL)
CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(contentVerticalAlignment, UIControlContentVerticalAlignment)
CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION(contentHorizontalAlignment, UIControlContentHorizontalAlignment)

- (id  _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))addTarget{
    return ^ (id target, SEL action, UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj addTarget:target action:action forControlEvents:events];
        }];
        return self;
    };
}
- ( id  _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))setTarget{
    return ^ (id target, SEL action, UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
             [obj setTarget:target eventAction:action forControlEvents:events];
        }];
       
        return self;
    };
}
- (id  _Nonnull (^)(CJGTargetActionBlock _Nonnull, UIControlEvents))addTargetBlock{
    return ^ (controlTargeAction block, UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj addEventBlock:block forEvents:events];
        }];
        return self;
    };
}
- (id  _Nonnull (^)(CJGTargetActionBlock _Nonnull, UIControlEvents))setTargetBlock{
    return ^ (controlTargeAction block, UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj setEventBlock:block forEvents:events];
        }];
        return self;
    };
}

- ( id  _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))removeTarget{
    return ^ (id target, SEL action, UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj removeTarget:target action:action forControlEvents:events];
        }];
        return self;
    };
}
- ( id  _Nonnull (^)(void))removeAllTarget{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj removeAllEvents];
        }];
        
        return self;
    };
}
- ( id  _Nonnull (^)(UIControlEvents))removeAllTargetBlock{
    return ^ (UIControlEvents events){
        [self enumerateObjectsUsingBlock:^(UIControl * _Nonnull obj) {
            [obj removeAllEventBlocksForEvents:events];
        }];
        return self;
    };
}
@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UIControl, CJGControlChain)

#undef CJGCATEGORY_CHAIN_CONTROL_IMPLEMENTATION
