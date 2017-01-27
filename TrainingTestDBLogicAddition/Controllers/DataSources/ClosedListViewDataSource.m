//
//  ClosedListViewDataSource.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ClosedCell.h"
#import "ClosedListViewDataSource.h"
#import "UITableViewCell+Identifier.h"

@implementation ClosedListViewDataSource

- (instancetype)initWithCloseHistories:(NSMutableArray<CloseHistory *> *)closeHistories {
    if (self = [super init]) {
        _closeHistories = closeHistories;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.closeHistories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ClosedCell *cell = (ClosedCell *)[tableView dequeueReusableCellWithIdentifier:[ClosedCell defaultIdentifier] forIndexPath:indexPath];
    cell.closeHistory = self.closeHistories[indexPath.row];
    return cell;
}

@end
