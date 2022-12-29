//
//  CJGVisualEffectViewChain.m
//  ShareManager
//
//  Created by Chen Jinguo on 2022/12/29.
//

#import "CJGVisualEffectViewChain.h"
#define CJGCATEGORY_CHAIN_VISUALEFFECT_IMPLEMENTATION(CJGMethod,CJGParaType) CJGCATEGORY_CHAIN_VIEWCLASS_IMPLEMENTATION(CJGMethod,CJGParaType, CJGVisualEffectViewChain *,UIVisualEffectView)
CJGCATEGORY_VIEW_IMPLEMENTATION(UIVisualEffectView, CJGVisualEffectViewChain)
@implementation CJGVisualEffectViewChain
CJGCATEGORY_CHAIN_VISUALEFFECT_IMPLEMENTATION(effect,UIVisualEffect*)
@end
#undef CJGCATEGORY_CHAIN_VISUALEFFECT_IMPLEMENTATION
