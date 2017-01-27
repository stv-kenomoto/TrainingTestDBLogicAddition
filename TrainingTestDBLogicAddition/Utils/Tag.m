//
//  Tag.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "Tag.h"

@implementation Tag

+ (NSString *)stringWithtype:(TagType)type {
    switch (type) {
        case TagTypePrivate:
            return LocalizedStringPrivate.localized;

        case TagTypeWork:
            return LocalizedStringWork.localized;

        default:
            return LocalizedStringOther.localized;
    }
}

@end
