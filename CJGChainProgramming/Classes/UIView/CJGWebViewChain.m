//
//  CJGWebViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGWebViewChain.h"
#define CJGCATEGORY_CHAIN_WEBVIEW_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGWebViewChain *,WKWebView)
@implementation CJGWebViewChain

@end
CJGCATEGORY_VIEW_IMPLEMENTATION(WKWebView, CJGWebViewChain)
#undef CJGCATEGORY_CHAIN_WEBVIEW_IMPLEMENTATION
