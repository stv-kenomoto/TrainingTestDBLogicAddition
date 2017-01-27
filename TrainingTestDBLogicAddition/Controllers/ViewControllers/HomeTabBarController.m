//
//  ViewController.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "HomeTabBarController.h"
#import "Image.h"
#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "Storyboard.h"

@interface HomeTabBarController ()

@end

static const NSInteger ToDoListTabTag = 1;
static const NSInteger ClosedListTabTag = 2;

@implementation HomeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewControllers];
}

- (void)setupViewControllers {
    UINavigationController *todoNavigationController = [Storyboard instantiateWithName:StoryboardNameToDoList identifier:StoryboardIdToDoList];
    [todoNavigationController setTabBarItem:[[UITabBarItem alloc] initWithTitle:LocalizedStringToDo.localized image:[UIImage imageNamed:ImageToDo] tag:ToDoListTabTag]];

    UINavigationController *closedNavigationController = [Storyboard instantiateWithName:StoryboardNameClosedList identifier:StoryboardIdClosedList];
    [closedNavigationController setTabBarItem:[[UITabBarItem alloc] initWithTitle:LocalizedStringClosed.localized image:[UIImage imageNamed:ImageCloseTabBar] tag:ClosedListTabTag]];

    self.viewControllers = @[todoNavigationController, closedNavigationController];
}

@end
