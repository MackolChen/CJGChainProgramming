//
//  UILabel+CJGChain.m
//  CJGChain
//
//  Created by maxl on 2018/12/18.
//  Copyright © 2018 mob. All rights reserved.
//

#import "UILabel+CJGChain.h"
#import "NSString+CJGChain.h"
#import "NSAttributedString+CJGChain.h"
@implementation UILabel (CJGChain)

- (CGSize)sizeWithoutLimitSize{
    return [self sizeWithLimitSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
}

- (CGSize)sizeWithLimitSize:(CGSize)size{
    return [self.text sizeWithAttributes:@{NSFontAttributeName:self.font} limitSize:size];
}

@end
