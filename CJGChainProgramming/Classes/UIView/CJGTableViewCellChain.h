//
//  CJGTableViewCellChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGTableViewCellChain;

@interface CJGTableViewCellChain : CJGViewChain<CJGTableViewCellChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ selectionStyle) (UITableViewCellSelectionStyle selectionStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ accessoryType) (UITableViewCellAccessoryType selectionStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ separatorInset) (UIEdgeInsets separatorInset);
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ editing) (BOOL editing);
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ editingWithAnimated) (BOOL editing, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ focusStyle)(UITableViewCellFocusStyle focusStyle) API_AVAILABLE(ios(9.0));
CJGCATEGORY_CHAIN_PROPERTY CJGViewChain * (^ userInteractionEnabledWhileDragging)(BOOL userInteractionEnabledWhileDragging) API_AVAILABLE(ios(11.0));

@end

static inline UITableViewCell * UITableViewCellCreateWithStyleAndIndentify(UITableViewCellStyle style, NSString *identifier){
    return [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier];
}

CJGCATEGORY_EXINTERFACE(UITableViewCell, CJGViewChain)
NS_ASSUME_NONNULL_END
