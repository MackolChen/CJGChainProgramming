//
//  CJGTableViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGScrollViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTableViewChain;
@interface CJGTableViewChain : CJGScrollViewChain<CJGTableViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain * (^ delegate) (id <UITableViewDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain * (^ dataSource) (id <UITableViewDataSource> dataSource);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain * (^ adJustedContentIOS11)(void);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ rowHeight)(CGFloat rowHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ sectionHeaderHeight)(CGFloat sectionHeaderHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ sectionFooterHeight)(CGFloat sectionFooterHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ estimatedRowHeight)(CGFloat estimatedRowHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ separatorInset)(UIEdgeInsets separatorInset);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ editing)(BOOL editing);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ allowsSelection)(BOOL allowsSelection);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ separatorStyle)(UITableViewCellSeparatorStyle separatorStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ separatorColor)(UIColor *separatorColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ tableHeaderView)(UIView * tableHeaderView);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ tableFooterView)(UIView * tableFooterView);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ sectionIndexBackgroundColor)(UIColor *sectionIndexBackgroundColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ sectionIndexColor)(UIColor *sectionIndexColor);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ registerCellClass)(Class cellClass, NSString *identifier);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ registerCellNib)(UINib * nib, NSString *identifier);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ registerViewClass)(Class viewClass, NSString *identifier);
CJGCATEGORY_CHAIN_PROPERTY CJGTableViewChain *(^ registerViewNib)(UINib * viewNib, NSString *identifier);
@end
static inline UITableView * UITableViewCreateWithStyle(UITableViewStyle style){
    return [[UITableView alloc]initWithFrame:CGRectZero style:style];
}
CJGCATEGORY_EXINTERFACE(UITableView, CJGTableViewChain)
NS_ASSUME_NONNULL_END
