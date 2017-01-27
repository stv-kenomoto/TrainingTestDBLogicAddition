//
//  ToDoEditViewController.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

#import "ToDo.h"

typedef NS_ENUM(NSInteger, ToDoEditViewControllerType) {
    ToDoEditViewControllerTypeNew,
    ToDoEditViewControllerTypeEdit
};

@interface ToDoEditViewController : UITableViewController

@property (assign, nonatomic) ToDoEditViewControllerType type;
@property (strong, nonatomic) ToDo *todo;

@end
