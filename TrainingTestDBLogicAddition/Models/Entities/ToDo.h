//
//  ToDo.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

@interface ToDo : NSObject

UIKIT_EXTERN const NSInteger ToDoDefaultIdentifier;

@property (assign, nonatomic) NSInteger identifier;
@property (copy, nonatomic) NSString *title;
@property (strong, nonatomic) NSDate *date;
@property (copy, nonatomic) NSString *locale;
@property (assign, nonatomic) NSInteger priority;
@property (assign, nonatomic) NSInteger tag;
@property (assign, nonatomic) BOOL isStar;
@property (assign, nonatomic) BOOL isClose;

@end
