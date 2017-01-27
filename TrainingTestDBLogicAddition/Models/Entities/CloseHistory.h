//
//  CloseHistory.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

@interface CloseHistory : NSObject

@property (assign, nonatomic) NSInteger identifier;
@property (assign, nonatomic) NSInteger todoIdentifier;
@property (copy, nonatomic) NSString *title;
@property (strong, nonatomic) NSDate *closeDate;
@property (copy, nonatomic) NSString *locale;
@property (assign, nonatomic) NSInteger priority;
@property (assign, nonatomic) NSInteger tag;

@end
