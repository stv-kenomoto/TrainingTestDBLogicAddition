//
//  Priority.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import Foundation;

typedef NS_ENUM(NSInteger, PriorityType) {
    PriorityTypeLow,
    PriorityTypeMid,
    PriorityTypeHigh
};

@interface Priority : NSObject

+ (NSString *)stringWithtype:(PriorityType)type;

@end
