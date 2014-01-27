//
//  AppDelegate.h
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MKNetworkKit.h"
#import "MLNavigationController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow                  *window;
@property (strong, nonatomic) MKNetworkEngine           *networkEngine;
@property (strong, nonatomic) UITabBarController        *tabBarController;

@end
