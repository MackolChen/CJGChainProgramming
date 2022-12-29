//
//  CJGActivityIndicatorViewChain.h
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGViewChain.h"
NS_ASSUME_NONNULL_BEGIN
@class CJGActivityIndicatorView;
@interface CJGActivityIndicatorView : CJGViewChain<CJGActivityIndicatorView *>
CJGCATEGORY_CHAIN_PROPERTY CJGActivityIndicatorView * (^ activityIndicatorViewStyle) (UIActivityIndicatorViewStyle activityIndicatorViewStyle);
CJGCATEGORY_CHAIN_PROPERTY CJGActivityIndicatorView * (^ hidesWhenStopped) (BOOL hidesWhenStopped);
CJGCATEGORY_CHAIN_PROPERTY CJGActivityIndicatorView * (^ color) (UIColor * color);
CJGCATEGORY_CHAIN_PROPERTY CJGActivityIndicatorView * (^ startAnimating) (void);
CJGCATEGORY_CHAIN_PROPERTY CJGActivityIndicatorView * (^ stopAnimating) (void);
@end

CJGCATEGORY_EXINTERFACE(UIActivityIndicatorView, CJGActivityIndicatorView)
NS_ASSUME_NONNULL_END
