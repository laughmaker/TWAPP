//
//  TWButton.m
//  TWAppNew
//
//  Created by line0 on 13-8-28.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "TWButton.h"

@implementation TWButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = kBlueColor;
        self.showsTouchWhenHighlighted = YES;
    }
    return self;
}


@end
