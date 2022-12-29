//
//  CJGButtonChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGButtonChain.h"
#define CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGButtonChain *,UIButton)

#define CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(CJGMethod,CJGParaType)\
- (CJGButtonChain * (^)(CJGParaType CJGMethod))CJGMethod    \
{   \
    return ^ (CJGParaType CJGMethod) {    \
        ((UIButton *)self.view).titleLabel.CJGMethod = CJGMethod;   \
        return self;    \
    };\
}
@implementation CJGButtonChain

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(contentEdgeInsets, UIEdgeInsets)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(titleEdgeInsets, UIEdgeInsets)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(imageEdgeInsets, UIEdgeInsets)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenHighlighted, BOOL)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(showsTouchWhenHighlighted, BOOL)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenDisabled, BOOL)

CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION(reversesTitleShadowWhenHighlighted, BOOL)

CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(textAlignment, NSTextAlignment)
CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(numberOfLines, NSInteger)
CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(lineBreakMode, NSLineBreakMode)
CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL)
CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION(baselineAdjustment, UIBaselineAdjustment)

- (CJGButtonChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image{
    return ^ (UIImage *image, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj setImage:image forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(NSString * _Nonnull, UIControlState))text{
    return ^ (NSString *text, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj setTitle:text forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState))backgroundImage{
    return ^ (UIImage *image, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj setBackgroundImage:image forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))attributedTitle{
    return ^ (NSAttributedString *title, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj setAttributedTitle:title forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(UIFont * _Nonnull))font{
    return ^ (UIFont *font){
        
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            obj.titleLabel.font = font;
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(UIColor * _Nonnull, UIControlState))textColor{
    return ^ (UIColor *color, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj setTitleColor:color forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(UIColor * _Nonnull, UIControlState))titleShadow{
    return ^ (UIColor *color, UIControlState state){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
             [(UIButton *)obj setTitleShadowColor:color forState:state];
        }];
        return self;
    };
}

- (CJGButtonChain * _Nonnull (^)(CJGButtonImageDirection, CGFloat))imageDirection{
    return ^ (CJGButtonImageDirection direction, CGFloat space){
        [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
            [obj imageDirection:direction space:space];
        }];
        return self;
    };
}
- (CJGButtonChain * _Nonnull (^)(CJGButtonImageTitleBlock _Nonnull))imageAndTitle{
    return ^ (CJGButtonImageTitleBlock block){
        if (block) {
            [self enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj) {
                block(obj.imageView,obj.titleLabel);
            }];
            
        }
        return self;
    };
}
@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UIButton, CJGButtonChain)
#undef CJGCATEGORY_CHAIN_BUTTON_IMPLEMENTATION
#undef CJGCATEGORY_CHAIN_BUTTONLABEL_IMPLEMENTATION
