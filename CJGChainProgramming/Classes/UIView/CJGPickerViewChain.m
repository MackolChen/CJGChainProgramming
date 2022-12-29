//
//  CJGPickerViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGPickerViewChain.h"

#define CJGCATEGORY_CHAIN_PICKER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGPickerViewChain *,UIPickerView)
CJGCATEGORY_VIEW_IMPLEMENTATION(UIPickerView, CJGPickerViewChain)
@implementation CJGPickerViewChain
CJGCATEGORY_CHAIN_PICKER_IMPLEMENTATION(dataSource, id<UIPickerViewDataSource>)
CJGCATEGORY_CHAIN_PICKER_IMPLEMENTATION(delegate, id<UIPickerViewDelegate>)
CJGCATEGORY_CHAIN_PICKER_IMPLEMENTATION(showsSelectionIndicator, BOOL)

- (NSInteger (^)(NSInteger))numberOfRowsInComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view numberOfRowsInComponent:1];
    };
}

- (CJGPickerViewChain * _Nonnull (^)(void))reloadAllComponents{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIPickerView * _Nonnull obj) {
            [obj reloadAllComponents];
        }];
        return self;
    };
}

- (CGSize (^)(NSInteger))rowSizeForComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view rowSizeForComponent:1];
    };
}

- (CJGPickerViewChain * _Nonnull (^)(NSInteger))reloadComponent{
    return ^ (NSInteger n){
        [self enumerateObjectsUsingBlock:^(UIPickerView * _Nonnull obj) {
            [obj reloadComponent:n];
        }];
        
        return self;
    };
}

- (UIView * _Nonnull (^)(NSInteger, NSInteger))viewForRowComponent{
    return ^ (NSInteger n, NSInteger n1){
        return [(UIPickerView *)self.view viewForRow:n forComponent:n1];
    };
}

- (CJGPickerViewChain * _Nonnull (^)(NSInteger, NSInteger, BOOL))selectRowInComponent{
    return ^ (NSInteger a, NSInteger b, BOOL c){
        [(UIPickerView *)self.view selectRow:a inComponent:b animated:c];
        return self;
    };
}

- (NSInteger (^)(NSInteger))selectedRowInComponent{
    return ^ (NSInteger n){
        return [(UIPickerView *)self.view selectedRowInComponent:1];
    };
}
@end
