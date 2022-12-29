//
//  CJGSegmentedControlChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGSegmentedControlChain.h"
#define CJGCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGSegmentedControlChain *,UISegmentedControl)
CJGCATEGORY_VIEW_IMPLEMENTATION(UISegmentedControl, CJGSegmentedControlChain)

#define CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(CJGTYPE,METHOD)\
- (CJGSegmentedControlChain * _Nonnull (^)(CJGTYPE, NSUInteger))METHOD{\
    return ^ (CJGTYPE t, NSUInteger i){\
        [(UISegmentedControl *)self.view METHOD:t forSegmentAtIndex:i];\
        return self;\
    };\
}\

@implementation CJGSegmentedControlChain

CJGCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(momentary, BOOL)
CJGCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(apportionsSegmentWidthsByContent, BOOL)

- (CJGSegmentedControlChain * _Nonnull (^)(void))removeAllSegments{
    return ^ (){
        [self enumerateObjectsUsingBlock:^(UISegmentedControl * _Nonnull obj) {
           [obj removeAllSegments];
        }];
        return self;
    };
}
CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(NSString * , setTitle)
CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(UIImage * , setImage)
CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(CGFloat , setWidth)
CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(CGSize, setContentOffset)
CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION(BOOL , setEnabled)
CJGCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION(selectedSegmentIndex, NSInteger)

- (CJGSegmentedControlChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState, UIBarMetrics))setBackgroundImage{
    return ^ (UIImage * _Nonnull a , UIControlState b, UIBarMetrics c){
        [self enumerateObjectsUsingBlock:^(UISegmentedControl * _Nonnull obj) {
            [obj setBackgroundImage:a forState:b barMetrics:c];
        }];
        return self;
    };
}

- (CJGSegmentedControlChain * _Nonnull (^)(UIImage * _Nonnull, UIControlState, UIControlState, UIBarMetrics))setDividerImage{
    return ^ (UIImage * _Nonnull a , UIControlState b, UIControlState b1, UIBarMetrics c){
        [self enumerateObjectsUsingBlock:^(UISegmentedControl * _Nonnull obj) {
            [obj setDividerImage:a forLeftSegmentState:b rightSegmentState:b1 barMetrics:c];
        }];
        return self;
    };
}

- (CJGSegmentedControlChain * _Nonnull (^)(NSDictionary<NSAttributedStringKey,id> * _Nonnull, UIControlState))setTitleTextAttributes{
    return ^ (NSDictionary<NSAttributedStringKey,id> * _Nonnull a, UIControlState b){
        [self enumerateObjectsUsingBlock:^(UISegmentedControl * _Nonnull obj) {
            [obj setTitleTextAttributes:a forState:b];
        }];
        return self;
    };
}


- (CJGSegmentedControlChain * _Nonnull (^)(UIOffset, UISegmentedControlSegment, UIBarMetrics))setContentPositionAdjustment{
    return ^ (UIOffset a, UISegmentedControlSegment b, UIBarMetrics c){
        [self enumerateObjectsUsingBlock:^(UISegmentedControl * _Nonnull obj) {
            [obj setContentPositionAdjustment:a forSegmentType:b barMetrics:c];
        }];
        return self;
    };
}

@end
#undef CJGCATEGORY_CHAIN_SEGMENT_IMPLEMENTATION
#undef CJGCATEGORY_CHAIN_SEGMENT_METHOD_IMPLEMENTATION
