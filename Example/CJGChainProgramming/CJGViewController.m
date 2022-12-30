//
//  CJGViewController.m
//  CJGChainProgramming
//
//  Created by MackolChen on 12/29/2022.
//  Copyright (c) 2022 MackolChen. All rights reserved.
//

#import "CJGViewController.h"
#import "CJGChainProgramming.h"

@interface CJGViewController ()<UIGestureRecognizerDelegate>
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIView *s;
@end

@implementation CJGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollViewCreate().makeChain.addSubView(self.view).assignTo(^(__kindof UIView * _Nonnull view) {
        self.scrollView = view;
    });
    UIViewCreate().makeChain.addToSuperView(self.view).frame(CGRectMake(0, 0, 0, 0)).backgroundColor(UIColor.whiteColor).assignTo(^(__kindof UIView * _Nonnull view) {
        self.s = view;
    });
    UIPanGestureRecognizerCreate().makeChain.delegate(self).maximumNumberOfTouches(2);
	
    UIControlCreate();
    CAEmitterLayerCreate().makeChain.assignTo(^(__kindof CALayer * _Nonnull layer) {
        
    });
    CAShapeLayerCreate().makeChain.assignTo(^(__kindof CALayer * _Nonnull layer) {
        
    });
    UIButtonCreate().makeChain.addToSuperView(self.view).assignTo(^(__kindof UIView * _Nonnull view) {
        
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
