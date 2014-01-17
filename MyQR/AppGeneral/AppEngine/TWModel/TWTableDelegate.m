//
//  TableDelegate.m
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "TWTableDelegate.h"

@implementation TWTableDelegate

- (id)init
{
    self = [super init];
    if (self)
    {
//        self.tableItems = [NSMutableArray array];
    }
    return self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.cellHeight)
    {
       return self.cellHeight(indexPath);
    }
    
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item = self.tableItems[indexPath.row];
    self.selectCell(indexPath, item);

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.width, 1)];
    view.backgroundColor = kClearColor;
    return view;
}



#pragma mark - PullTable Delegate

- (void)pullTableViewDidStartPullDownRefresh:(PullTableView *)tableView
{
    if (tableView.refreshType == PRPullDownRefresh)
    {
        self.updateData();
    }
    else
    {
        [tableView stopPullTableViewRefresh];
    }
}

- (void)pullTableViewDidStartPullUpLoadMore:(PullTableView *)tableView
{
    if (tableView.refreshType == PRPullUpLoadMore)
    {
        self.loadMoreData();
    }
}


#pragma mark - ScrollView Delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if ([scrollView isKindOfClass:[PullTableView class]])
    {
        PullTableView *tableView = (PullTableView *)scrollView;
        [tableView pullTableViewDidScroll:scrollView];
    }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    if ([scrollView isKindOfClass:[PullTableView class]])
    {
        PullTableView *tableView = (PullTableView *)scrollView;
        [tableView pullTableViewDidEndDragging:scrollView];
    }
}


@end
