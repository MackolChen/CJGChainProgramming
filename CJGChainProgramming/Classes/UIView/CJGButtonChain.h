//
//  CJGButtonChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGControlChain.h"
#import "UIButton+CJGChain.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^CJGButtonImageTitleBlock)(UIImageView *imageView, UILabel *title);
@class CJGButtonChain;
@interface CJGButtonChain : CJGControlChain<CJGButtonChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ adjustsImageWhenHighlighted) (BOOL adjustsImageWhenHighlighted);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ showsTouchWhenHighlighted) (BOOL showsTouchWhenHighlighted);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ adjustsImageWhenDisabled) (BOOL adjustsImageWhenDisabled);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ reversesTitleShadowWhenHighlighted) (BOOL reversesTitleShadowWhenHighlighted);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ image) (UIImage *image, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ text) (NSString *title, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ textColor) (UIColor *color, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain * (^ backgroundImage) (UIImage *image, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ attributedTitle) (NSAttributedString *title, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ titleShadow) (UIColor *color, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ font) (UIFont *font);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ textAlignment)(NSTextAlignment textAlignment);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ numberOfLines)(NSInteger numberOfLines);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ lineBreakMode)(NSLineBreakMode lineBreakMode);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);

CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain * (^ imageDirection) (CJGButtonImageDirection imageDirection, CGFloat space);
CJGCATEGORY_CHAIN_PROPERTY CJGButtonChain *(^ imageAndTitle)(CJGButtonImageTitleBlock block);
@end

static inline UIButton *UIButtonCreateWithType(UIButtonType buttonType){
    return [UIButton buttonWithType:buttonType];
}
CJGCATEGORY_EXINTERFACE(UIButton, CJGButtonChain)
NS_ASSUME_NONNULL_END
