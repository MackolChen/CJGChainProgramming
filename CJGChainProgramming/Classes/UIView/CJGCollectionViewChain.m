//
//  CJGCollectionViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGCollectionViewChain.h"
#define CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGCollectionViewChain *,UICollectionView)
@implementation CJGCollectionViewChain

CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(collectionViewLayout, UICollectionViewLayout *)
CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(delegate, id<UICollectionViewDelegate>)
CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(dataSource, id<UICollectionViewDataSource>)

CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsSelection, BOOL)
CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)

- (CJGCollectionViewChain * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [self enumerateObjectsUsingBlock:^(UICollectionView * _Nonnull obj) {
                [obj setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
            }];
        }
        return self;
    };
}

- (CJGCollectionViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [self enumerateObjectsUsingBlock:^(UICollectionView * _Nonnull obj) {
            [obj registerNib:nib forCellWithReuseIdentifier:identifier];
        }];
        return self;
    };
}

- (CJGCollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [self enumerateObjectsUsingBlock:^(UICollectionView * _Nonnull obj) {
            [obj registerClass:class forCellWithReuseIdentifier:identifier];
        }];
        return self;
    };
}

- (CJGCollectionViewChain * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerClass:class forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}
- (CJGCollectionViewChain * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib * nib, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

- (CJGCollectionViewChain * _Nonnull (^)(void))reloadData{
    return ^ (){
        [CATransaction begin];
        [CATransaction setDisableActions:YES];
        [(UICollectionView *)self.view reloadData];
        [CATransaction commit];
        
        return self;
    };
}

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UICollectionView, CJGCollectionViewChain)
#undef CJGCATEGORY_CHAIN_COLLECTIONVIEW_IMPLEMENTATION

