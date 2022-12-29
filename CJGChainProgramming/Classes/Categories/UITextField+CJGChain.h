//
//  UITextField+CJGChain.h
//  CJGChain
//
//  Created by maxl on 2018/12/28.
//  Copyright © 2018 mob. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (CJGChain)



- (NSRange)selectedRange;


- (void)setSelectedRange:(NSRange)range;

/**
 已输入字符串
 */
@property (nonatomic, copy) void (^ editedText) (NSString *text);
/**
 需要结合delegate中的方法
 */
@property (nonatomic, assign) NSUInteger limitLength;

@end

NS_ASSUME_NONNULL_END
