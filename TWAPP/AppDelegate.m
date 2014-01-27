//
//  AppDelegate.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImage+Addition.h"
#import "NewsVC.h"
#import "MessageVC.h"
#import "FindVC.h"
#import "MeVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NewsVC *newsVC = [[NewsVC alloc] init];
    MLNavigationController *newsNC = [[MLNavigationController alloc] initWithRootViewController:newsVC];
    
    MessageVC *messageVC = [[MessageVC alloc] init];
    MLNavigationController *messageNC = [[MLNavigationController alloc] initWithRootViewController:messageVC];
    
    FindVC *findVC = [[FindVC alloc] init];
    MLNavigationController *findNC = [[MLNavigationController alloc] initWithRootViewController:findVC];
    
    MeVC *meVC = [[MeVC alloc] init];
    MLNavigationController *meNC = [[MLNavigationController alloc] initWithRootViewController:meVC];
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[newsNC, messageNC, findNC, meNC];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    self.window.rootViewController = self.tabBarController;
    self.window.radius = 3;
    [self.window makeKeyAndVisible];
    
    NSDictionary *dict = @{NSFontAttributeName: kTitleFontMiddle};
    [[UINavigationBar appearance] setTitleTextAttributes:dict];
    
    UIImage *image = [UIImage imageWithColor:[kAppBgColor colorWithAlphaComponent:0.97] frame:CGRectMake(0, 0, 320, 64)];
    if (!mIsiOS7)
    {
        image = [UIImage imageWithColor:[kAppBgColor colorWithAlphaComponent:0.97] frame:CGRectMake(0, 0, 320, 44)];
    }
    [[UINavigationBar appearance] setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].tintColor = kBlackColor;
    
    UIImage *shadowImage = [UIImage imageWithColor:[kGrayColor colorWithAlphaComponent:0.15] frame:CGRectMake(0, 0, 320, 1)];
    [[UINavigationBar appearance] setShadowImage:shadowImage];

    //初始化网络引擎
    self.networkEngine = [[MKNetworkEngine alloc] initWithHostName:kHostSite];
    [self.networkEngine useCache];
    
    return YES;
}



@end
