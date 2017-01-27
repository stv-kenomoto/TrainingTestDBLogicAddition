//
//  Storyboard.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "Storyboard.h"

@implementation Storyboard

NSString *const StoryboardNameClosedList = @"ClosedList";
NSString *const StoryboardNameToDoList = @"ToDoList";
NSString *const StoryboardNameToDoEdit = @"ToDoEdit";

NSString *const StoryboardIdClosedList = @"ClosedList";
NSString *const StoryboardIdToDoList = @"ToDoList";
NSString *const StoryboardIdToDoEdit = @"ToDoEdit";

+ (UIViewController *)instantiateWithName:(NSString *)name identifier:(NSString *)identifier {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:identifier];
    return viewController;
}

@end
