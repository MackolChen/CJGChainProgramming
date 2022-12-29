//
//  CJGTapGestureChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGGestureChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGTapGestureChain;
@interface CJGTapGestureChain : CJGGestureChain<CJGTapGestureChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGTapGestureChain * (^ numberOfTapsRequired) (NSUInteger numberOfTapsRequired);
@end
CJGCATEGORY_EXINTERFACE(UITapGestureRecognizer, CJGTapGestureChain)
static inline UITapGestureRecognizer *_Nonnull UITapGestureRecognizerCreateWithTarget(void (^ targetBlock) (id ges)){
    return UITapGestureRecognizerCreate().makeChain.addTargetBlock(targetBlock).gesture;
}

NS_ASSUME_NONNULL_END
