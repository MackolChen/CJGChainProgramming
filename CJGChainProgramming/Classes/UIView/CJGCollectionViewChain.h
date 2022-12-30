//
//  CJGCollectionViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGBaseScrollViewChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGCollectionViewChain;
@interface CJGCollectionViewChain : CJGBaseScrollViewChain<CJGCollectionViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ delegate)(id<UICollectionViewDelegate> delegate);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ dataSource)(id<UICollectionViewDataSource> dataSource);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ allowsSelection)(BOOL allowsSelection);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ registerCellClass)(Class cellClass, NSString *identifier);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ registerCellNib)(UINib * nib, NSString *identifier);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ registerViewClass)(Class viewClass, NSString *identifier, NSString *kind);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain *(^ registerViewNib)(UINib * viewNib, NSString *identifier, NSString *kind);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain * (^ adJustedContentIOS11)(void);
CJGCATEGORY_CHAIN_PROPERTY CJGCollectionViewChain * (^ reloadData)(void);
@end
static inline UICollectionView *UICollectionViewCreateWithLayout(UICollectionViewFlowLayout *layout){
    return [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
}
CJGCATEGORY_EXINTERFACE_(UICollectionView, CJGCollectionViewChain)
NS_ASSUME_NONNULL_END
