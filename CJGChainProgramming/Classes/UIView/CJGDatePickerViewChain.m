//
//  CJGDatePickerViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGDatePickerViewChain.h"

#define CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGDatePickerViewChain *,UIDatePicker)
@implementation CJGDatePickerViewChain
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(datePickerMode, UIDatePickerMode)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(locale, NSLocale *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(calendar, NSCalendar *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(timeZone, NSTimeZone *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(date, NSDate *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(minimumDate, NSDate *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(maximumDate, NSDate *)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(countDownDuration, NSTimeInterval)
CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION(minuteInterval, NSInteger)

- (CJGDatePickerViewChain * _Nonnull (^)(NSDate * _Nonnull, BOOL))setDateWithAnimated{
    return ^ (NSDate *date, BOOL animated){
        [self enumerateObjectsUsingBlock:^(UIDatePicker * _Nonnull obj) {
            [obj setDate:date animated:animated];
        }];
        return self;
    };
}

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(UIDatePicker, CJGDatePickerViewChain)
#undef CJGCATEGORY_CHAIN_DATEPICKER_IMPLEMENTATION
