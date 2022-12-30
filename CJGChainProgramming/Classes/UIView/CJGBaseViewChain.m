//
//  CJGBaseViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGBaseViewChain.h"
#import "UIView+CJGChain.h"
#import "CJGTapGestureChain.h"
#import <Masonry/Masonry.h>

#define CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, id,UIView)


#define     CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(CJGMethod,CJGParaType) \
- (id (^)(CJGParaType CJGMethod))CJGMethod    \
{   \
return ^id (CJGParaType CJGMethod) {    \
[self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {\
obj.layer.CJGMethod = CJGMethod;\
}];\
return self;    \
};\
}

@interface CJGBaseViewChain ()
@property (nonatomic, assign) NSInteger  tag;
@end
@implementation CJGBaseViewChain

- (instancetype)initWithTag:(NSInteger)tag andView:(UIView *)view modelClass:(nonnull Class)modelClass{
    if (self = [super initWithModelObject:view modelClass:modelClass]) {
        _tag = tag;
        [view setTag:tag];
    }
    return self;
}
#pragma mark - frame -

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(bounds, CGRect)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(frame, CGRect)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(origin, CGPoint)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(x, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(y, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(size, CGSize)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(width, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(height, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(center, CGPoint)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(centerX, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(centerY, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(top, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(bottom, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(left, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(right, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(autoresizingMask, UIViewAutoresizing)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(autoresizesSubviews, BOOL)

- (UIView * _Nonnull (^)(NSInteger))viewWithTag{
    return ^ (NSInteger tag){
        UIView *view = [self.view viewWithTag:tag];
        return view;
    };
}

- (CGFloat (^)(void))visibleAlpha{
    return ^{
        return [self.view visibleAlpha];
    };
}


- (CGRect (^)(CGRect, UIView * _Nonnull))convertRectTo{
    return  ^(CGRect rect, UIView *view){
        return [self.view convertRectTo:rect :view];
    };
}


- (CGRect (^)(CGRect, UIView * _Nonnull))convertRectFrom{
    return  ^(CGRect rect, UIView *view){
        return [self.view convertRectFrom:rect :view];
    };
}

- (CGPoint (^)(CGPoint, UIView * _Nonnull))convertPointTo{
    return  ^(CGPoint point, UIView *view){
        return [self.view convertPointTo:point :view];
    };
}

- (CGPoint (^)(CGPoint, UIView * _Nonnull))convertPointFrom{
    return  ^(CGPoint point, UIView *view){
        return [self.view convertPointFrom:point :view];
    };
}
#pragma mark - show -

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(backgroundColor, UIColor *)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(tintColor, UIColor *)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(alpha, CGFloat)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(hidden, BOOL)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(clipsToBounds, BOOL)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(opaque, BOOL)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(userInteractionEnabled, BOOL)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(multipleTouchEnabled, BOOL)

CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(contentMode, UIViewContentMode)
CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION(transform, CGAffineTransform)

- (id  _Nonnull (^)(BOOL))endEditing{
    return ^(BOOL end){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj endEditing:end];
        }];
        
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull))addToSuperView{
    return ^(UIView *superView){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [superView addSubview:obj];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull))addSubView{
    return ^(UIView *subView){
        [self.view addSubview:subView];
        return self;
    };
}

- (id  _Nonnull (^)(UIGestureRecognizer * _Nonnull))addGesture{
    return ^(UIGestureRecognizer *ges){
        if (!ges) return self;
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj addGestureRecognizer:ges];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(void))bringOwnToFirst{
    return ^(){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj.superview bringSubviewToFront:obj];
        }];
        return self;
    };
}



- (id  _Nonnull (^)(void (^ _Nonnull)(id _Nonnull)))addGestureBlock{
    return ^( void (^ ges) (id)){
        if (ges) {
            [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
                [obj addGestureRecognizer:UITapGestureRecognizerCreateWithTarget(ges)];
            }];
        }
        
        return self;
    };
}

- (id  _Nonnull (^)(UIGestureRecognizer * _Nonnull))removeGesture{
    return ^(UIGestureRecognizer *ges){
        if (!ges) return self;
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj removeGestureRecognizer:ges];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(UIGestureRecognizer * _Nonnull, NSString * _Nonnull))addGestureWithTag{
    return ^(UIGestureRecognizer *ges, NSString *tag){
        if (!tag) return self;
        NSMutableDictionary *dic = [self CJG_category_gestureDic];
        if ([dic.allKeys containsObject:tag]) {
            self.removeGestureByTag(tag);
        }
        self.addGesture(ges);
        [dic setObject:ges forKey:tag];
        return self;
    };
}

- (id  _Nonnull (^)(NSString * _Nonnull))removeGestureByTag{
    return ^(NSString *tag){
        if (!tag) return self;
        NSMutableDictionary *dic = [self CJG_category_gestureDic];
        UIGestureRecognizer *ges = [dic objectForKey:tag];
        self.removeGesture(ges);
        [dic removeObjectForKey:tag];
        return self;
    };
}

- (UIGestureRecognizer * (^)(NSString * ))getGestureByTag{
    return ^(NSString *tag){
        UIGestureRecognizer *ges;
        if (!tag) {
            NSMutableDictionary *dic = [self CJG_category_gestureDic];
            ges = [dic objectForKey:tag];
        }
        return ges;
    };
}

- (NSMutableDictionary *)CJG_category_gestureDic{
    NSMutableDictionary *_dic = objc_getAssociatedObject(self, @selector(CJG_category_gestureDic));
    if (!_dic) {
        _dic = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, @selector(CJG_category_gestureDic), _dic, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return _dic;
}

- (id  _Nonnull (^)(UIView * _Nonnull))bringSubViewToFront{
    return ^ (UIView *view){
        [self.view bringSubviewToFront:view];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull))sendSubViewToBack{
    return ^ (UIView *view){
        [self.view sendSubviewToBack:view];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))exchangeSubView{
    return ^(UIView *v1, UIView *v2){
        NSArray *subs = self.view.subviews;
        NSInteger index1 = [subs indexOfObject:v1];
        NSInteger index2 = [subs indexOfObject:v2];
        if (index1 != NSNotFound && index2 != NSNotFound) {
            if (index2 != index1) {
                [self.view exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
            }
        }
        return self;
    };
}

- (id  _Nonnull (^)(NSInteger, NSInteger))exchangeSubviewWithIndex{
    return ^(NSInteger v1, NSInteger v2){
        NSInteger count = self.view.subviews.count;
        if (v1 < count && v1 > 0 && v2 < count && v2 > 0 && v1 != v2) {
            [self.view exchangeSubviewAtIndex:v1 withSubviewAtIndex:v2];
        }
        return self;
    };
}


- (id  _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubViewAbove{
    return ^(UIView *above, UIView *below){
        if (!above) return self;
        if (!below) {
            below = [self.view.subviews lastObject];
        }
        [self.view insertSubview:above aboveSubview:below];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubViewBelow{
    return ^(UIView *below, UIView *above){
        if (!below) return self;
        if (!above) {
            above = [self.view.subviews lastObject];
        }
        [self.view insertSubview:below belowSubview:above];
        return self;
    };
}

- (id  _Nonnull (^)(UIView * _Nonnull, NSInteger))insertSubViewIndex{
    return ^(UIView *view, NSInteger index){
        if (view) {
            [self.view insertSubview:view atIndex:index];
        }
        return self;
    };
}

- (id (^)(CGFloat cornerRadius))cornerRadius
{
    return ^__kindof CJGBaseViewChain *(CGFloat cornerRadius) {
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj.layer setCornerRadius:cornerRadius];
        }];
        return self;
    };
}

- (id (^)(CGFloat borderWidth, UIColor *borderColor))border
{
    return ^__kindof CJGBaseViewChain *(CGFloat borderWidth, UIColor *borderColor) {
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj.layer setBorderWidth:borderWidth];
            [obj.layer setBorderColor:borderColor.CGColor];
        }];
        
        return self;
    };
}

- (id (^)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity))shadow
{
    return ^ CJGBaseViewChain *(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity) {
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj.layer setShadowOffset:shadowOffset];
            [obj.layer setShadowRadius:shadowRadius];
            [obj.layer setShadowColor:shadowColor.CGColor];
            [obj.layer setShadowOpacity:shadowOpacity];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(float))layerOpacity{
    return ^ (float opacity){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            obj.layer.opacity = opacity;
        }];
        return self;
    };
}

- (id  _Nonnull (^)(BOOL))layerOpaque{
    return ^ (BOOL opaque){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            obj.layer.opaque = opaque;
        }];
        return self;
    };
}

- (id  _Nonnull (^)(UIColor * _Nonnull))layerBackGroundColor{
    return ^ (UIColor *color){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            obj.layer.backgroundColor = color.CGColor;
        }];
        return self;
    };
}

CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(masksToBounds, BOOL);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shadowColor, CGColorRef);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shadowOpacity, CGFloat);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shadowOffset, CGSize);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shadowRadius, CGFloat);

CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(borderWidth, CGFloat);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(borderColor, CGColorRef);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(zPosition, CGFloat);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(anchorPoint, CGPoint);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shouldRasterize, BOOL);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(rasterizationScale, CGFloat);
CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION(shadowPath, CGPathRef);


- (id  _Nonnull (^)(CATransform3D))layerTransform{
    return ^ (CATransform3D ta){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            obj.layer.transform = ta;
        }];
        
        return self;
    };
}

- (id  _Nonnull (^)(CJGAssignViewLoad _Nonnull))assignTo{
    return ^ (void (^assignTo)(id view)){
        if (assignTo) {
            assignTo(self.view);
        }
        assignTo = nil;
        return self;
    };
}

- (id  _Nonnull (^)(void))removeFormSuperView{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj removeFromSuperview];
        }];
        
        return self;
    };
}

- (id  _Nonnull (^)(void))sizeToFit{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj sizeToFit];
        }];
        return self;
    };
}

- (id  _Nonnull (^)(void))layoutIfNeeded{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj layoutIfNeeded];
        }];
        
        return self;
    };
}

- (id  _Nonnull (^)(NSInteger))makeTag{
    return ^ (NSInteger tag){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            obj.tag = tag;
        }];
        self.tag = tag;
        return self;
    };
}

- (id  _Nonnull (^)(void))setNeedsLayout{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj setNeedsLayout];
        }];
        return self;
    };
}
- (id  _Nonnull (^)(void))setNeedsDisplay{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj setNeedsDisplay];
        }];
        return self;
    };
}

- (CGSize (^)(CGSize))sizeToFitSize{
    return ^ (CGSize size){
        return [self.view sizeThatFits:size];
    };
}

- (id (^)(CGRect))setNeedsDisplayRect{
    return ^ (CGRect rect){
        [self enumerateObjectsUsingBlock:^(UIView * _Nonnull obj) {
            [obj setNeedsDisplayInRect:rect];
        }];
        return self;
    };
}

- (UIView *)view{
    return self.effectiveObjects.firstObject;
}

@end

#undef CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION

#undef CJGCATEGORY_CHAIN_LAYER_IMPLEMENTATION
#undef CJGCATEGORY_CHAIN_VIEW_IMPLEMENTATION
#define   CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
[self enumerateObjectsUsingBlock:^(UIView*  _Nonnull obj) {\
if (obj.superview) { \
[obj masonryMethod:constraints];\
}\
}];\
return self;\
};  \
}
#define     CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
return self;    \
};  \
}
@implementation CJGBaseViewChain (Masonry)
#if __has_include(<Masonry.h>) || __has_include("Masonry.h")
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(makeMasonry, mas_makeConstraints);
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(updateMasonry, mas_updateConstraints);
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION(remakeMasonry, mas_remakeConstraints);

#else
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(makeMasonry, mas_makeConstraints);
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(updateMasonry, mas_updateConstraints);
CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL(remakeMasonry, mas_remakeConstraints);
#endif

@end
#undef CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION
#undef CJGCATEGORY_CHAIN_MASONRY_IMPLEMENTATION_NULL
