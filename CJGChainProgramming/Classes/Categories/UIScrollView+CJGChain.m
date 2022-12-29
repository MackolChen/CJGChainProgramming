//
//  UIScrollView+CJGChain.m
//  CJGChain
//
//  Created by maxl on 2019/1/7.
//  Copyright © 2019 mob. All rights reserved.
//

#import "UIScrollView+CJGChain.h"

@implementation UIScrollView (CJGChain)
- (void)adJustedContentIOS11{
    if (@available(iOS 11.0, *)) {
        [self setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
}
@end
