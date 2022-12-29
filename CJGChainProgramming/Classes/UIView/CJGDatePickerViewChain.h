//
//  CJGDatePickerViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGControlChain.h"

NS_ASSUME_NONNULL_BEGIN
@class CJGDatePickerViewChain;
@interface CJGDatePickerViewChain : CJGControlChain<CJGDatePickerViewChain *>
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ datePickerMode) (UIDatePickerMode datePickerMode);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ locale) (NSLocale* locale);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ calendar) (NSCalendar* calendar);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ timeZone) (NSTimeZone* timeZone);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ date) (NSDate * date);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ minimumDate) (NSDate * minimumDate);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ maximumDate) (NSDate * maximumDate);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ countDownDuration) (NSTimeInterval countDownDuration);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ minuteInterval) (NSInteger minuteInterval);
CJGCATEGORY_CHAIN_PROPERTY CJGDatePickerViewChain * (^ setDateWithAnimated) (NSDate *date, BOOL animated);

@end

CJGCATEGORY_EXINTERFACE(UIDatePicker, CJGDatePickerViewChain)

NS_ASSUME_NONNULL_END
