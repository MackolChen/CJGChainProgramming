//
//  NSAttributedString+CJGChain.m
//  CJGChain
//
//  Created by maxl on 2019/1/3.
//  Copyright © 2019 mob. All rights reserved.
//

#import "NSAttributedString+CJGChain.h"

@implementation NSAttributedString (CJGChain)
- (CGSize)sizeWithLimitSize:(CGSize)size{
    CGRect strRect = [self boundingRectWithSize:size options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) context:nil];
    return strRect.size;
}

- (CGSize)sizeWithoutLimitSize{
    return [self sizeWithLimitSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
}
@end
