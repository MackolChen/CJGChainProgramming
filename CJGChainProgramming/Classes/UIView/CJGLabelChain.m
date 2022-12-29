//
//  CJGLabelChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGLabelChain.h"
#import "UILabel+CJGChain.h"
#define CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGLabelChain *,UILabel)
@implementation CJGLabelChain

CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(text, NSString *);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(font, UIFont *);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(textColor, UIColor *);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(attributedText, NSAttributedString *);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(textAlignment, NSTextAlignment);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(numberOfLines, NSInteger);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(lineBreakMode, NSLineBreakMode);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(baselineAdjustment, UIBaselineAdjustment);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(allowsDefaultTighteningForTruncation, BOOL);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(preferredMaxLayoutWidth, CGFloat);
CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION(minimumScaleFactor, CGFloat);
- (CGSize (^)(CGSize))sizeWithLimitSize{
    return ^ (CGSize size){
        return [(UILabel *)self.view sizeWithLimitSize:size];
    };
}

- (CGSize (^)(void))sizeWithOutLimitSize{
    return ^ (){
        return [(UILabel *)self.view sizeWithoutLimitSize];
    };
}
@end

CJGCATEGORY_VIEW_IMPLEMENTATION(UILabel, CJGLabelChain)
#undef CJGCATEGORY_CHAIN_LABLE_IMPLEMENTATION
