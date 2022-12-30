//
//  CJGTextViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGBaseScrollViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTextViewChain;
@interface CJGTextViewChain : CJGBaseScrollViewChain<CJGTextViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ delegate)(id<UITextViewDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ text)(NSString *text);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ font)(UIFont *font);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ textColor)(UIColor *textColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ textAlignment)(NSTextAlignment textAlignment);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ selectedRange)(NSRange numberOfLines);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ editable)(BOOL editable);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ selectable)(BOOL selectable);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes);

CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ attributedText)(NSAttributedString *attributedText);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ typingAttributes)(NSDictionary *typingAttributes);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ clearsOnInsertion)(BOOL clearsOnInsertion);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ textContainerInset)(UIEdgeInsets textContainerInset);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ linkTextAttributes)(NSDictionary *linkTextAttributes);
#pragma mark - UITextInputTraits -
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ autocapitalizationType)(UITextAutocapitalizationType autocapitalizationType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ autocorrectionType)(UITextAutocorrectionType autocorrectionType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ spellCheckingType)(UITextSpellCheckingType spellCheckingType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ keyboardType)(UIKeyboardType keyboardType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ keyboardAppearance)(UIKeyboardAppearance keyboardAppearance);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ returnKeyType)(UIReturnKeyType returnKeyType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ enablesReturnKeyAutomatically)(BOOL enablesReturnKeyAutomatically);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ secureTextEntry)(BOOL secureTextEntry);
CJGCATEGORY_CHAIN_PROPERTY CJGTextViewChain *(^ textContentType)(UITextContentType textContentType) API_AVAILABLE(ios(10));
@end
CJGCATEGORY_EXINTERFACE(UITextView, CJGTextViewChain)
NS_ASSUME_NONNULL_END
