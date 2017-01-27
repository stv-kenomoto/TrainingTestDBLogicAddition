//
//  ClosedListViewDataSource.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

#import "CloseHistory.h"

@interface ClosedListViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray<CloseHistory*> *closeHistories;

- (instancetype)initWithCloseHistories:(NSMutableArray<CloseHistory *> *)closeHistories;

@end
