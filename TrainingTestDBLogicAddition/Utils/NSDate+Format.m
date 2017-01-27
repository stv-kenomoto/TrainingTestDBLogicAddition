//
//  NSDate+Format.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "NSDate+Format.h"

@implementation NSDate (Format)

- (NSString *)stringWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = format;
    return [formatter stringFromDate:self];
}

@end
