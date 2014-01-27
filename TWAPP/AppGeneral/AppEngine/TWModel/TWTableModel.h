//
//  TableViewModel.h
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

/*
 *带TableView的视图控制器的Model。
 */

#import <Foundation/Foundation.h>
#import "TWNetworkRequest.h"

@interface TWTableModel : NSObject
//网络请求主类
@property (strong, nonatomic, readonly) TWNetworkRequest    *networkRequest;

//TableView数据
@property (strong, nonatomic, readonly) NSMutableArray      *tableItems;

//初始值为－1
@property (assign, nonatomic, readonly) NSInteger           totalPage;

//初始值为0
@property (assign, nonatomic, readonly) NSInteger           toPage;

//在更新数据时复位参数
- (void)resetRequestParams;


@end
