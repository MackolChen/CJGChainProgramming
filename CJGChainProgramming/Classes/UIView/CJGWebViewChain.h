//
//  CJGWebViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGScrollViewChain.h"
#if __has_include(<WebKit/WebKit.h>)
#import <WebKit/WebKit.h>
#else
@import WebKit;
#endif

NS_ASSUME_NONNULL_BEGIN


@class CJGWebViewChain;
@interface CJGWebViewChain : CJGScrollViewChain<CJGWebViewChain *>

@end

CJGCATEGORY_EXINTERFACE(WKWebView, CJGWebViewChain)
NS_ASSUME_NONNULL_END
