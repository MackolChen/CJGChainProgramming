//
//  CJGChainDefine.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#ifndef CJGChainDefine_h
#define CJGChainDefine_h
#import <UIKit/UIKit.h>
#import <objc/message.h>
#define CJGTansactionDisableActions(...)\
[CATransaction begin];\
[CATransaction setDisableActions:YES];\
__VA_ARGS__\
[CATransaction commit];

#define CJGCATEGORY_CHAIN_PROPERTY @property (nonatomic, copy, readonly)

#define CJGCATEGORY_STRONG_PROPERTY @property (nonatomic, strong, readonly)
#define CJGCATEGORY_ASSIGN_PROPERTY @property (nonatomic, assign, readonly)
#define CJGCATEGORY_CHAIN_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass)\
- (CJGModelType  _Nonnull (^)(CJGParaType))CJGMethod {\
return ^ (CJGParaType CJGMethod){\
NSArray *array = self.effectiveObjects.copy;\
for (CJGPropertyClass * obj in array) {\
    obj.CJGMethod = CJGMethod;\
}\
return self;\
};\
}

#define CJGCATEGORY_EXINTERFACE(CJGClass, ModelType)\
static inline CJGClass *CJGClass##Create(void){\
return [CJGClass new];\
}\
static inline ModelType *CJGClass##ModelCreate(void){\
return ((id (*)(id, SEL))objc_msgSend)([CJGClass new],sel_registerName("makeChain"));\
}\
static inline ModelType *CJGClass##NameCreate(NSString *className){\
Class clas = NSClassFromString(className);\
if ([clas isKindOfClass:[CJGClass class]]) {\
return [clas new];\
}\
return nil;\
}\
static inline ModelType *CJGClass##NameModelCreate(NSString *className){\
return ((id (*)(id, SEL))objc_msgSend)( CJGClass##NameCreate(className),sel_registerName("makeChain"));\
}\
CJGCATEGORY_EXINTERFACE_(CJGClass, ModelType)\
static inline ModelType * CJGClass##ModelWithArray(NSArray <CJGClass *>*objects)\
{\
    return ((id (*)(id, SEL,id,id))objc_msgSend)([ModelType alloc],sel_registerName("initWithModelObjects:modelClass:"),objects,[CJGClass class]);\
}

#define CJGCATEGORY_EXINTERFACE_(CJGClass, ModelType)\
@interface CJGClass(EXT)\
CJGCATEGORY_CHAIN_PROPERTY ModelType * makeChain;\
@end

#endif /* CJGChainDefine_h */
