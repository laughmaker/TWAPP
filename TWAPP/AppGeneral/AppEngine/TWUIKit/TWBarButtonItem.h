//
//  TWBarButtonItem.h
//  MyQR
//
//  Created by line0 on 13-12-28.
//  Copyright (c) 2013年 ThreeWater. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWBarButtonItem : UIBarButtonItem
@property (strong, nonatomic) UIButton *btn;

- (id)initWithSize:(CGSize)size title:(NSString *)title;
- (id)initWithSize:(CGSize)size image:(UIImage *)image;


@end
