//
//  Alert.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

@interface Alert : NSObject

+ (UIAlertController *)closeToDoAlertControllerWithHandler:(void (^)(UIAlertAction *action))handler;
+ (UIAlertController *)closingFailedToDoAlertController;
+ (UIAlertController *)deleteToDoAlertControllerWithHandler:(void (^)(UIAlertAction *action))handler;
+ (UIAlertController *)deleteFailedToDoAlertController;
+ (UIAlertController *)savingFailedAlertController;
+ (UIAlertController *)requiredTitleAlertController;

@end
