//
//  CJGTableViewCellChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGTableViewCellChain;

@interface CJGTableViewCellChain : CJGBaseViewChain<CJGTableViewCellChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ selectionStyle) (UITableViewCellSelectionStyle selectionStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ accessoryType) (UITableViewCellAccessoryType selectionStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ separatorInset) (UIEdgeInsets separatorInset);
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ editing) (BOOL editing);
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ editingWithAnimated) (BOOL editing, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ focusStyle)(UITableViewCellFocusStyle focusStyle) API_AVAILABLE(ios(9.0));
CJGCATEGORY_CHAIN_PROPERTY CJGBaseViewChain * (^ userInteractionEnabledWhileDragging)(BOOL userInteractionEnabledWhileDragging) API_AVAILABLE(ios(11.0));

@end

static inline UITableViewCell * UITableViewCellCreateWithStyleAndIndentify(UITableViewCellStyle style, NSString *identifier){
    return [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier];
}

CJGCATEGORY_EXINTERFACE(UITableViewCell, CJGBaseViewChain)
NS_ASSUME_NONNULL_END
