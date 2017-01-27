//
//  ToDoCell.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

#import "ToDo.h"

@interface ToDoCell : UITableViewCell

@property (strong, nonatomic, setter=setToDo:) ToDo *todo;

@end
