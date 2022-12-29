//
//  CJGLabelChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGLabelChain;
@interface CJGLabelChain : CJGViewChain<CJGLabelChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ text)(NSString *text);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ font)(UIFont *font);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ textColor)(UIColor *textColor);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ attributedText)(NSAttributedString *attributedText);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ textAlignment)(NSTextAlignment textAlignment);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ numberOfLines)(NSInteger numberOfLines);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ lineBreakMode)(NSLineBreakMode lineBreakMode);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ allowsDefaultTighteningForTruncation)(BOOL allowsDefaultTighteningForTruncation) API_AVAILABLE(ios(9.0));
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ minimumScaleFactor)(CGFloat minimumScaleFactor);
CJGCATEGORY_CHAIN_PROPERTY CJGLabelChain *(^ preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth);
CJGCATEGORY_CHAIN_PROPERTY CGSize (^ sizeWithLimitSize) (CGSize limitSize);
CJGCATEGORY_CHAIN_PROPERTY CGSize (^ sizeWithOutLimitSize) (void);
@end
CJGCATEGORY_EXINTERFACE(UILabel, CJGLabelChain)
NS_ASSUME_NONNULL_END
