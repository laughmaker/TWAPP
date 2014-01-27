//
//  TWBarButtonItem.m
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import "TWBarButtonItem.h"

@implementation TWBarButtonItem

- (id)initWithSize:(CGSize)size image:(UIImage *)image
{
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.bounds = CGRectMake(0, 0, size.width, size.height);
    [self.btn setImage:image forState:UIControlStateNormal];
    [self.btn setTitleColor:kBlackColor forState:UIControlStateNormal];
    self.btn.titleLabel.font = kContentFontMiddle;
    self.btn.showsTouchWhenHighlighted = YES;
    
    self = [super initWithCustomView:self.btn];
    
    return self;
}

- (id)initWithSize:(CGSize)size title:(NSString *)title
{
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.bounds = CGRectMake(0, 0, size.width, size.height);
    [self.btn setTitle:title forState:UIControlStateNormal];
    [self.btn setTitleColor:kBlackColor forState:UIControlStateNormal];
    self.btn.titleLabel.font = kContentFontMiddle;
    self.btn.showsTouchWhenHighlighted = YES;

    self = [super initWithCustomView:self.btn];
    
    return self;
}

@end
