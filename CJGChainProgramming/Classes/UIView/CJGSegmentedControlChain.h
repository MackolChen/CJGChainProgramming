//
//  CJGSegmentedControlChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGSegmentedControlChain;
@interface CJGSegmentedControlChain : CJGControlChain<CJGSegmentedControlChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ momentary) (BOOL momentary);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ apportionsSegmentWidthsByContent) (BOOL apportionsSegmentWidthsByContent);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ removeAllSegments) (void);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ insertSegmentWithTitle) (NSString * title, NSUInteger index, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ insertSegmentWithImage) (UIImage * image, NSUInteger index, BOOL animated);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ removeSegmentAtIndex) (NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setTitle) (NSString *title, NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setImage) (UIImage *image, NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setWidth) (CGFloat width, NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setContentOffset) (CGSize offset, NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setEnabled) (BOOL enable, NSUInteger index);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ selectedSegmentIndex) (NSInteger selectedSegmentIndex);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setBackgroundImage) (UIImage *image, UIControlState state, UIBarMetrics barMetrics);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setDividerImage) (UIImage *image, UIControlState leftState, UIControlState rightState, UIBarMetrics barMetrics);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setTitleTextAttributes) (NSDictionary <NSAttributedStringKey ,id>* attributes, UIControlState state);
CJGCATEGORY_CHAIN_PROPERTY CJGSegmentedControlChain* (^ setContentPositionAdjustment) (UIOffset adjustment, UISegmentedControlSegment leftCenterRightOrAlone, UIBarMetrics barMetrics);

@end

CJGCATEGORY_EXINTERFACE(UISegmentedControl, CJGSegmentedControlChain)
NS_ASSUME_NONNULL_END
