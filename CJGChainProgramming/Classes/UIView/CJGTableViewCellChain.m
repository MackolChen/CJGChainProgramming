//
//  CJGTableViewCellChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTableViewCellChain.h"
#define CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGBaseViewChain *,UITableViewCell)
@implementation CJGTableViewCellChain

CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(selectionStyle, UITableViewCellSelectionStyle)
CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(accessoryType, UITableViewCellAccessoryType)
CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(separatorInset, UIEdgeInsets)
CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(editing, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(focusStyle, UITableViewCellFocusStyle)
CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION(userInteractionEnabledWhileDragging, BOOL)

- (CJGBaseViewChain * _Nonnull (^)(BOOL, BOOL))editingWithAnimated{
    return ^ (BOOL editing, BOOL animated){
        [self enumerateObjectsUsingBlock:^(UITableViewCell * _Nonnull obj) {
            [obj setEditing:editing animated:animated];
        }];
        return self;
    };
}
@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UITableViewCell, CJGTableViewCellChain)
#undef CJGCATEGORY_CHAIN_TABLEVIEWCELL_IMPLEMENTATION
