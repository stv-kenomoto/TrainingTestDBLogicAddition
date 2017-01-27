//
//  ToDoListViewDataSource.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

#import "ToDo.h"

@interface ToDoListViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray<ToDo*> *todoList;

- (instancetype)initWithToDoList:(NSMutableArray<ToDo *> *)todoList;

@end
