//
//  UILabel+CJGChain.h
//  CJGChain
//
//  Created by maxl on 2018/12/18.
//  Copyright © 2018 mob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+CJGChain.h"
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (CJGChain)

- (CGSize)sizeWithLimitSize:(CGSize)size;

- (CGSize)sizeWithoutLimitSize;

@end

NS_ASSUME_NONNULL_END
