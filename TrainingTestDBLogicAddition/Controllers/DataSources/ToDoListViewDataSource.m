//
//  ToDoListViewDataSource.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ToDoCell.h"
#import "ToDoListViewDataSource.h"
#import "UITableViewCell+Identifier.h"

@implementation ToDoListViewDataSource

- (instancetype)initWithToDoList:(NSMutableArray<ToDo *> *)todoList {
    if (self = [super init]) {
        _todoList = todoList;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todoList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ToDoCell *cell = (ToDoCell *)[tableView dequeueReusableCellWithIdentifier:[ToDoCell defaultIdentifier] forIndexPath:indexPath];
    cell.todo = self.todoList[indexPath.row];
    return cell;
}

@end
