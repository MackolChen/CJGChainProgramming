//
//  CJGTableViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGTableViewChain.h"
#import "UIScrollView+CJGChain.h"
#define CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGTableViewChain *,UITableView)
@implementation CJGTableViewChain


CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(delegate, id<UITableViewDelegate>)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(dataSource, id<UITableViewDataSource>)
- (CJGTableViewChain * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [self enumerateObjectsUsingBlock:^(UITableView * _Nonnull obj) {
                [obj adJustedContentIOS11];
            }];
        }
        return self;
    };
}

CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(rowHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionHeaderHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionFooterHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedRowHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionHeaderHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionFooterHeight, CGFloat)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorInset, UIEdgeInsets)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(editing, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelection, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelectionDuringEditing, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelectionDuringEditing, BOOL)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorStyle, UITableViewCellSeparatorStyle)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorColor, UIColor *)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(tableHeaderView, UIView *)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(tableFooterView, UIView *)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexBackgroundColor, UIColor *)
CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexColor, UIColor *)

- (CJGTableViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [self enumerateObjectsUsingBlock:^(UITableView * _Nonnull obj) {
            [obj registerNib:nib forCellReuseIdentifier:identifier];
        }];
        return self;
    };
}

- (CJGTableViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib *nib, NSString *identifier){
        [self enumerateObjectsUsingBlock:^(UITableView * _Nonnull obj) {
            [obj registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        }];
        
        return self;
    };
}

- (CJGTableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [self enumerateObjectsUsingBlock:^(UITableView * _Nonnull obj) {
            [obj registerClass:class forCellReuseIdentifier:identifier];
        }];
        return self;
    };
}

- (CJGTableViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier){
        
        [self enumerateObjectsUsingBlock:^(UITableView * _Nonnull obj) {
            [obj registerClass:class forHeaderFooterViewReuseIdentifier:identifier];
        }];
        return self;
    };
}

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UITableView, CJGTableViewChain)
#undef CJGCATEGORY_CHAIN_TABLEVIEW_IMPLEMENTATION
