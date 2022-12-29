//
//  CJGGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGChainBase.h"

#define CJGCATEGORY_CHAIN_GESTURECLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass) CJGCATEGORY_CHAIN_IMPLEMENTATION(CJGMethod,CJGParaType, CJGModelType, CJGPropertyClass)

#define CJGCATEGORY_GESTURE_IMPLEMENTATION(CJGClass, modelType)\
@implementation CJGClass (EXT)\
- (modelType *)makeChain{\
    return [[modelType alloc] initWithGesture:self modelClass:[CJGClass class]];\
}\
@end
NS_ASSUME_NONNULL_BEGIN

@interface CJGGestureChain <__covariant  ObjectType> : CJGChainBase<ObjectType>

- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture modelClass:(Class)modelClass;

@property (nonatomic, strong, readonly) __kindof UIGestureRecognizer * gesture;

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ delegate) (id<UIGestureRecognizerDelegate> delegate);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ enabled) (BOOL enabled);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ cancelsTouchesInView) (BOOL cancelsTouchesInView);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ delaysTouchesBegan) (BOOL delaysTouchesBegan);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ delaysTouchesEnded) (BOOL delaysTouchesEnded);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ allowedTouchTypes) (NSArray<NSNumber *> *allowedTouchTypes) API_AVAILABLE(ios(9));

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ allowedPressTypes) (NSArray<NSNumber *> *allowedPressTypes) API_AVAILABLE(ios(9));

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ requiresExclusiveTouchType) (BOOL requiresExclusiveTouchType)API_AVAILABLE(ios(9.2));

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ name) (NSString * name) API_AVAILABLE(ios(11));

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ requireGestureRecognizerToFail) (UIGestureRecognizer * requireGestureRecognizerToFail);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addTarget) (id target, SEL action);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTarget) (id target, SEL action);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addTargetBlock) (void (^) (id gesture));

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addTargetBlockWithTag) (void (^) (id gesture), NSString *tag);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeTargetBlockWithTag) (NSString *tag);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ removeAllTargetBlock)(void);

CJGCATEGORY_CHAIN_PROPERTY ObjectType (^ addToSuperView) (UIView *view);

@end

NS_ASSUME_NONNULL_END

