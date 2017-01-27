//
//  NSString+Localization.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "NSString+Localization.h"

@implementation NSString (Localization)

- (NSString *)localized {
    return NSLocalizedString(self, self);
}

@end
