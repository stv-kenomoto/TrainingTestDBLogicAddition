//
//  Priority.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "Priority.h"

@implementation Priority

+ (NSString *)stringWithtype:(PriorityType)type {
    switch (type) {
        case PriorityTypeLow:
            return LocalizedStringPriorityLow.localized;

        case PriorityTypeMid:
            return LocalizedStringPriorityMid.localized;

        default:
            return LocalizedStringPriorityHigh.localized;
    }
}

@end
