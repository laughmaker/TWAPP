//
//  TableDataSource.h
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TWCell.h"

//Cell Block，用于配置Cell
typedef void (^CellConfigureBlock) (TWCell *cell, id cellDatas);

@interface TWTableDataSource : NSObject <UITableViewDataSource>
//数据源，由数据模型给定
@property (strong, nonatomic) NSMutableArray                *tableItems;

//cell标志位
@property (copy, nonatomic, readonly) NSString              *cellIdentifier;

//配置cell的block
@property (copy, nonatomic, readonly) CellConfigureBlock    cellConfigureBlock;

/*! 初始化Cell
 * \param cellIdentifier 重用标志
 * \param cellConfigureBlock 配置代码块
 * returns 返回Cell。
 */

- (id)initWithCellIdentifier:(NSString *)cellIdentifier
          cellconfigureBlock:(CellConfigureBlock)cellConfigureBlock;


/*! 返回路径下的数据
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
