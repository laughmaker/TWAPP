//
//  TWTextView.m
//  TWAppNew
//
//  Created by line0 on 13-8-28.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "TWTextView.h"

@implementation TWTextView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.layer.cornerRadius = 3;
        self.clipsToBounds = YES;
        self.layer.borderColor = [[UIColor grayColor] colorWithAlphaComponent:0.2].CGColor;
        self.layer.borderWidth = 1;
        [self setFont:[UIFont systemFontOfSize:15]];
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
