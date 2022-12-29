//
//  CJGTextFieldChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGControlChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTextFieldChain;
@interface CJGTextFieldChain : CJGControlChain<CJGTextFieldChain*>
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ text)(NSString *text);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ attributedText)(NSAttributedString *attributedText);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ font)(UIFont *font);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ textColor)(UIColor *textColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ textAlignment)(NSTextAlignment textAlignment);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ borderStyle)(UITextBorderStyle borderStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ defaultTextAttributes)(NSDictionary *defaultTextAttributes);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ placeholder)(NSString *placeholder);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ attributedPlaceholder)(NSAttributedString *attributedPlaceholder);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ minimumFontSize)(CGFloat minimumFontSize);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ delegate)(id<UITextFieldDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ background)(UIImage *background);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ disabledBackground)(UIImage *disabledBackground);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ typingAttributes)(NSDictionary *typingAttributes);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ clearButtonMode)(UITextFieldViewMode clearButtonMode);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ leftView)(UIView *leftView);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ leftViewMode)(UITextFieldViewMode leftViewMode);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ rightView)(UIView *rightView);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ rightViewMode)(UITextFieldViewMode rightViewMode);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ limitLength) (NSUInteger limitLength);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ inputView)(UIView *inputView);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ inputAccessoryView)(UIView *inputAccessoryView);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ placeholderFont)(UIFont *font);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ placeholderColor)(UIColor *color);
#pragma mark - UITextInputTraits -
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ autocapitalizationType)(UITextAutocapitalizationType autocapitalizationType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ autocorrectionType)(UITextAutocorrectionType autocorrectionType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ spellCheckingType)(UITextSpellCheckingType spellCheckingType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ keyboardType)(UIKeyboardType keyboardType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ keyboardAppearance)(UIKeyboardAppearance keyboardAppearance);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ returnKeyType)(UIReturnKeyType returnKeyType);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ enablesReturnKeyAutomatically)(BOOL enablesReturnKeyAutomatically);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ secureTextEntry)(BOOL secureTextEntry);
CJGCATEGORY_CHAIN_PROPERTY CJGTextFieldChain *(^ textContentType)(UITextContentType textContentType) API_AVAILABLE(ios(10.0));
@end
CJGCATEGORY_EXINTERFACE(UITextField, CJGTextFieldChain)
NS_ASSUME_NONNULL_END
