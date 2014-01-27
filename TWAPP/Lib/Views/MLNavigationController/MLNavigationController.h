//
//  MLNavigationController.h
//  MultiLayerNavigation
//
//  Created by Feather Chan on 13-4-12.
//  Copyright (c) 2013年 Feather Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^MLMoveBlock) (CGPoint touchPoint);

@interface MLNavigationController : UINavigationController

// Enable the drag to back interaction, Defalt is YES.
@property (assign, nonatomic) BOOL canDragBack;
@property (strong, nonatomic) UIPanGestureRecognizer *recognizer;

//返回手势移动时调用
@property (copy, nonatomic)   MLMoveBlock   moveBlock;

@end
