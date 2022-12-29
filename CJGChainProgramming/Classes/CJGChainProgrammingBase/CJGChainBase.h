//
//  CJGChainBase.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGChainDefine.h"
NS_ASSUME_NONNULL_BEGIN
@interface CJGChainBase<__covariant ObjectType> : NSObject
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)initWithModelObject:(id)object modelClass:(Class)modelClass;
- (instancetype)initWithModelObjects:(NSArray *)objects modelClass:(Class)modelClass;
@property (nonatomic, strong, readonly) NSMutableArray *allOjects;

@property (nonatomic, strong, readonly) NSMutableArray * effectiveObjects;
//添加的数量，包括原来的创建对象的数量
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ multiple) (NSInteger count);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_first) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_sencond) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_third) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_fourth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_fifth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_sixth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_seventh) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_eighth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_ninth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_tenth) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_sequence) (NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_range) (NSRange range);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ part_all) (void);
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ assignToObjects)(void (^ objs) (NSArray * objs));
CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ reverse) (void);
- (void)enumerateObjectsUsingBlock:(void (^)(id _Nonnull))block;
@end
NS_ASSUME_NONNULL_END
