//
//  MeVC.m
//  SchoolInk
//
//  Created by line0 on 14-1-12.
//  Copyright (c) 2014年 ThreeWater. All rights reserved.
//

#import "MeVC.h"

@interface MeVC ()

@end

@implementation MeVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = @"我";
        self.tabBarItem.title = @"我";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
