//
//  ToDo.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

const NSInteger ToDoDefaultIdentifier = -1;

- (instancetype)init {
    if (self = [super init]) {
        _identifier = ToDoDefaultIdentifier;
    }
    return self;
}

@end
