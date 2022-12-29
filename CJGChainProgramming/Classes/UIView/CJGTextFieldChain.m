//
//  CJGTextFieldChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTextFieldChain.h"
#import "UITextField+CJGChain.h"
#define CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGTextFieldChain *,UITextField)

@implementation CJGTextFieldChain

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(text, NSString *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedText, NSAttributedString *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(font, UIFont *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(textColor, UIColor *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(textAlignment, NSTextAlignment);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(borderStyle, UITextBorderStyle);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(defaultTextAttributes, NSDictionary *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(placeholder, NSString *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedPlaceholder, NSAttributedString *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(keyboardType, UIKeyboardType);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(clearsOnBeginEditing, BOOL);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(minimumFontSize, CGFloat);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(delegate, id<UITextFieldDelegate>);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(background, UIImage *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(disabledBackground, UIImage *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(allowsEditingTextAttributes, BOOL);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(typingAttributes, NSDictionary *);

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(clearButtonMode, UITextFieldViewMode);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(leftView, UIView *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(leftViewMode, UITextFieldViewMode);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(rightView, UIView *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(rightViewMode, UITextFieldViewMode);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(limitLength, NSUInteger);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(inputView, UIView *);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(inputAccessoryView, UIView *);

#pragma mark - UITextInputTraits -
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(autocapitalizationType, UITextAutocapitalizationType);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(autocorrectionType, UITextAutocorrectionType)
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(spellCheckingType, UITextSpellCheckingType)

CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(keyboardAppearance, UIKeyboardAppearance);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(returnKeyType, UIReturnKeyType);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(enablesReturnKeyAutomatically, BOOL);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(secureTextEntry, BOOL);
CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION(textContentType, UITextContentType);


- (CJGTextFieldChain * _Nonnull (^)(UIFont * _Nonnull))placeholderFont{
    return ^(UIFont *font){
        [self enumerateObjectsUsingBlock:^(UITextField * _Nonnull obj) {
            [obj setValue:font forKeyPath:@"_placeholderLabel.font"];
        }];
        return self;
    };
}

- (CJGTextFieldChain * _Nonnull (^)(UIColor * _Nonnull))placeholderColor{
    return ^(UIColor *color){
        [self enumerateObjectsUsingBlock:^(UITextField * _Nonnull obj) {
            [obj setValue:color forKeyPath:@"_placeholderLabel.textColor"];
        }];
        return self;
    };
}

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UITextField, CJGTextFieldChain)
#undef CJGCATEGORY_CHAIN_TEXTFIELD_IMPLEMENTATION
