//
//  UIView+Nib.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "UIView+Nib.h"

@implementation UIView (Nib)

+ (instancetype)defaultViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    UINib *nib = [UINib nibWithNibName:[self defaultNibName] bundle:bundle];
    return [nib instantiateWithOwner:self options:nil].firstObject;
}

+ (NSString *)defaultNibName {
    return NSStringFromClass(self);
}

@end
