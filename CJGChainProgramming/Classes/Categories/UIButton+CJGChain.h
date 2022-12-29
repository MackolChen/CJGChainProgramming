//
//  UIButton+CJGChain.h
//  CJGChain
//
//  Created by maxl on 2018/12/18.
//  Copyright © 2018 mob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILabel+CJGChain.h"
NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CJGButtonImageDirection) {
    CJGButtonImageDirectionTop,
    CJGButtonImageDirectionLeft,
    CJGButtonImageDirectionRight,
    CJGButtonImageDirectionBottom,
};

typedef void(^CJGButtonLimitTimesTapBlock)(NSUInteger time, BOOL *stop, UIButton *button);

@interface UIButton (CJGChain)


- (void)imageDirection:(CJGButtonImageDirection)direction space:(CGFloat)space;



#pragma mark - 限制点击次数 -
//点击次数
@property (nonatomic, copy, readonly) UIButton * (^ buttonTapTime) (CJGButtonLimitTimesTapBlock block);

//时间间隔
@property (nonatomic, copy, readonly) UIButton* (^ tapSpaceTime) (NSTimeInterval spaceTime);

//清除限制
- (void)cancelRecordTime;


@end

NS_ASSUME_NONNULL_END
