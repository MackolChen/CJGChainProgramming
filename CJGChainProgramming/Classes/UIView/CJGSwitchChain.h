//
//  CJGSwitchChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//
#import "CJGControlChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGSwitchChain;
@interface CJGSwitchChain : CJGControlChain<CJGSwitchChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGSwitchChain *(^ on)(BOOL on);
CJGCATEGORY_CHAIN_PROPERTY CJGSwitchChain *(^ onTintColor)(UIColor *onTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGSwitchChain *(^ thumbTintColor)(UIColor *thumbTintColor);
CJGCATEGORY_CHAIN_PROPERTY CJGSwitchChain *(^ onImage)(UIImage *onImage);
CJGCATEGORY_CHAIN_PROPERTY CJGSwitchChain *(^ offImage)(UIImage *offImage);
@end
CJGCATEGORY_EXINTERFACE(UISwitch, CJGSwitchChain)
NS_ASSUME_NONNULL_END
