//
//  Storyboard.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

@interface Storyboard<T: UIViewController *> : NSObject

UIKIT_EXTERN NSString *const StoryboardNameClosedList;
UIKIT_EXTERN NSString *const StoryboardNameToDoList;
UIKIT_EXTERN NSString *const StoryboardNameToDoEdit;

UIKIT_EXTERN NSString *const StoryboardIdClosedList;
UIKIT_EXTERN NSString *const StoryboardIdToDoList;
UIKIT_EXTERN NSString *const StoryboardIdToDoEdit;

+ (T)instantiateWithName:(NSString *)name identifier:(NSString *)identifier;

@end
