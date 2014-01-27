//
//  UIView+Addition.m
//  Line0New
//
//  Created by line0 on 13-5-17.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (UIView *)subViewWithTag:(int)tag
{
	for (UIView *v in self.subviews)
    {
		if (v.tag == tag)
        {
			return v;
		}
	}
	return nil;
}

- (void)setRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.clipsToBounds = YES;
}

- (CGFloat)radius
{
    return self.layer.cornerRadius;
}

@end
