//
//  CJGPickerViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGPickerViewChain;
@interface CJGPickerViewChain : CJGBaseViewChain<CJGPickerViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ dataSource) (id<UIPickerViewDataSource> dataSource);
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ delegate) (id<UIPickerViewDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ showsSelectionIndicator) (BOOL showsSelectionIndicator);
CJGCATEGORY_CHAIN_PROPERTY NSInteger (^ numberOfRowsInComponent) (NSInteger component);
CJGCATEGORY_CHAIN_PROPERTY CGSize (^ rowSizeForComponent) (NSInteger component);
CJGCATEGORY_CHAIN_PROPERTY UIView * (^ viewForRowComponent) (NSInteger row, NSInteger component);
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ reloadAllComponents) (void);
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ reloadComponent) (NSInteger component);
CJGCATEGORY_CHAIN_PROPERTY CJGPickerViewChain * (^ selectRowInComponent) (NSInteger row, NSInteger component, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY NSInteger (^ selectedRowInComponent) (NSInteger component);

@end
CJGCATEGORY_EXINTERFACE(UIPickerView, CJGPickerViewChain)

NS_ASSUME_NONNULL_END
