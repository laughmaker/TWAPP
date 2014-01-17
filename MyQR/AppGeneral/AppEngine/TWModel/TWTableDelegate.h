//
//  TableDelegate.h
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PullTableView.h"

//配置路径下的cell高
typedef CGFloat (^CellHeightBlock) (NSIndexPath *indexPath);

//选中某行时的block
typedef void (^SelectCellBlock) (NSIndexPath *indexPath, id item);


//加载更多和更新数据
typedef void (^TWLoadMoreDataBlock) (void);
typedef void (^TWUpdateDataBlock)   (void);


@interface TWTableDelegate : NSObject <UITableViewDelegate, PullTableViewDelegate>
//数据源，由数据模型给定，与DataSource一致
@property (strong, nonatomic) NSMutableArray    *tableItems;

@property (copy, nonatomic) SelectCellBlock     selectCell;

//如果没有设置，则为默认的44高
@property (copy, nonatomic) CellHeightBlock     cellHeight;

@property (copy, nonatomic) TWLoadMoreDataBlock loadMoreData;
@property (copy, nonatomic) TWUpdateDataBlock   updateData;

@end
