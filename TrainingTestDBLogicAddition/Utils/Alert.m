//
//  Alert.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "Alert.h"
#import "LocalizedString.h"
#import "NSString+Localization.h"

@implementation Alert

+ (UIAlertController *)closeToDoAlertControllerWithHandler:(void (^)(UIAlertAction *action))handler {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringCloseToDo.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:handler];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LocalizedStringCancel.localized
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    [alert addAction:cancelAction];
    return alert;
}

+ (UIAlertController *)closingFailedToDoAlertController {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringClosingFailed.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    return alert;
}

+ (UIAlertController *)deleteToDoAlertControllerWithHandler:(void (^)(UIAlertAction *action))handler {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringDeleteToDo.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:handler];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:LocalizedStringCancel.localized
                                                       style:UIAlertActionStyleCancel
                                                     handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    [alert addAction:cancelAction];
    return alert;
}

+ (UIAlertController *)deleteFailedToDoAlertController {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringDeleteFailed.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    return alert;
}

+ (UIAlertController *)savingFailedAlertController {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringSavingFailed.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    return alert;
}

+ (UIAlertController *)requiredTitleAlertController {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:LocalizedStringRequiredTitle.localized
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:LocalizedStringOK.localized
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action) {}];

    [alert addAction:okAction];
    return alert;
}

@end
