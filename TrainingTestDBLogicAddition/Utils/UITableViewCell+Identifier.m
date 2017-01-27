//
//  UITableViewCell+Identifier.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "UITableViewCell+Identifier.h"

@implementation UITableViewCell (Identifier)

+ (NSString *)defaultIdentifier {
    return NSStringFromClass(self);
}

@end
