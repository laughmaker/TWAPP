//
//  FindVC.m
//  SchoolInk
//
//  Created by line0 on 14-1-12.
//  Copyright (c) 2014年 ThreeWater. All rights reserved.
//

#import "FindVC.h"

@interface FindVC ()

@end

@implementation FindVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = @"发现";
        self.tabBarItem.title = @"发现";
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
