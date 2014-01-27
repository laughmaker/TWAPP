//
//  ViewController.m
//  TWApp
//
//  Created by line0 on 13-7-6.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "TWViewController.h"

@interface TWViewController ()
@property (strong, nonatomic) UIButton *backBtn;

@end

@implementation TWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = kAppBgColor;
    self.navigationController.view.radius = 3;

    self.statusBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 20)];
    self.statusBar.backgroundColor = [kAppBgColor colorWithAlphaComponent:0.95];
    self.statusBar.hidden = YES;
    [self.view addSubview:self.statusBar];

    if (self.navigationController.viewControllers.count > 1)
    {
        [self showBackButton:YES];
    }
//    [self removeShadowFromNavigationBar];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.view bringSubviewToFront:self.statusBar];
    [self.backBtn setTitle:[self lastViewControllerTitle] forState:UIControlStateNormal];
}

- (void)showBackButton:(BOOL)show
{
    if (!show)
    {
        return;
    }
    
    self.backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.backBtn.frame = CGRectMake(0, 0, 100, 30);
    if (mIsiOS7)
    {
        self.backBtn.imageEdgeInsets = UIEdgeInsetsMake(7, -9, 7, 70);
        self.backBtn.titleEdgeInsets = UIEdgeInsetsMake(0, -12, 0, 0);
    }
    else
    {
        self.backBtn.imageEdgeInsets = UIEdgeInsetsMake(7, 0, 7, 80);
        self.backBtn.titleEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);
    }
    self.backBtn.contentHorizontalAlignment = UIViewContentModeLeft;
    [self.backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self.backBtn setImage:mImageByName(@"backItem") forState:UIControlStateNormal];
    [self.backBtn setTitleColor:kBlackColor forState:UIControlStateNormal];
    self.backBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    self.backBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
    [self.backBtn addTarget:self.navigationController action:@selector(popViewControllerAnimated:) forControlEvents:UIControlEventTouchUpInside];
    self.backBtn.showsTouchWhenHighlighted = YES;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.backBtn];
}

- (void)removeShadowFromNavigationBar
{
    //去掉导航栏的阴影
    for (UIView *view in self.navigationController.navigationBar.subviews)
    {
        if ([view isKindOfClass:NSClassFromString(@"_UINavigationBarBackground")])
        {
            for (CALayer *layer in view.layer.sublayers)
            {
                layer.hidden = YES;
            }
        }
    }
}

- (NSString *)lastViewControllerTitle
{
    if (self.navigationController.viewControllers.count > 1)
    {
        NSInteger lastVCIdx = 0;
        for (int i = 0; i < self.navigationController.viewControllers.count; i++)
        {
            UIViewController *vc = self.navigationController.viewControllers[i];
            if ([vc isKindOfClass:[self class]])
            {
                lastVCIdx = i - 1;
                break;
            }
        }
        
        TWViewController *lastVC = self.navigationController.viewControllers[lastVCIdx];
        return lastVC.title;
    }
    
    return @"返回";
}



- (UIView *)errorView
{
    return nil;
}

- (UIView *)loadingView
{
    return nil;
}

- (void)showLoadingAnimated:(BOOL) animated
{
    UIView *loadingView = [self loadingView];
    loadingView.alpha = 0.0f;
    [self.view addSubview:loadingView];
    [self.view bringSubviewToFront:loadingView];
    
    double duration = animated ? 0.4f:0.0f;
    [UIView animateWithDuration:duration
                     animations:^
     {
         loadingView.alpha = 1.0f;
     }];
}

- (void)hideLoadingViewAnimated:(BOOL) animated
{
    UIView *loadingView = [self loadingView];
    
    double duration = animated ? 0.4f:0.0f;
    [UIView animateWithDuration:duration
                     animations:^
     {
         loadingView.alpha = 0.0f;
     }
                     completion:^(BOOL finished)
     {
         [loadingView removeFromSuperview];
     }];
}

- (void)showErrorViewAnimated:(BOOL) animated
{
    UIView *errorView = [self errorView];
    errorView.alpha = 0.0f;
    [self.view addSubview:errorView];
    [self.view bringSubviewToFront:errorView];
    
    double duration = animated ? 0.4f:0.0f;
    [UIView animateWithDuration:duration
                     animations:^
     {
         errorView.alpha = 1.0f;
     }];
}

- (void)hideErrorViewAnimated:(BOOL) animated
{
    UIView *errorView = [self errorView];
    
    double duration = animated ? 0.4f:0.0f;
    [UIView animateWithDuration:duration animations:^
     {
         errorView.alpha = 0.0f;
     }
                     completion:^(BOOL finished)
     {
         [errorView removeFromSuperview];
     }]; 
}


@end
