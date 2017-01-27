//
//  ToDoListViewController.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "EmptyToDoView.h"
#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "Storyboard.h"
#import "ToDoEditViewController.h"
#import "ToDoListViewController.h"
#import "ToDoListViewDataSource.h"
#import "UIView+Nib.h"

@interface ToDoListViewController () <UITableViewDelegate, EmptyToDoViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) EmptyToDoView *emptyToDoView;
@property (strong, nonatomic) ToDoListViewDataSource *dataSource;

@end

@implementation ToDoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupEmptyView];
    [self setupTableView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self loadToDo];
}

- (IBAction)didTouchCompose:(UIBarButtonItem *)sender {
    [self movoToRegister];
}

- (void)setupEmptyView {
    self.emptyToDoView = [EmptyToDoView defaultViewFromNib];
    self.emptyToDoView.delegate = self;
}

- (void)setupTableView {
    self.tableView.delegate = self;
}

- (void)loadToDo {
    // TODO: ToDoリストを取得する処理を記述する
    NSArray<ToDo *> *todoList = @[];
    if (todoList.count == 0) {
        [self.view addSubview:self.emptyToDoView];
    } else {
        [self.emptyToDoView removeFromSuperview];
        self.dataSource = [[ToDoListViewDataSource alloc] initWithToDoList:[todoList mutableCopy]];
        self.tableView.dataSource = self.dataSource;
    }
}

- (void)movoToRegister {
    ToDoEditViewController *todoEditViewController = [Storyboard instantiateWithName:StoryboardNameToDoEdit identifier:StoryboardIdToDoEdit];
    todoEditViewController.type = ToDoEditViewControllerTypeNew;
    [self.navigationController pushViewController:todoEditViewController animated:YES];
}

- (void)movoToEditWithToDo:(ToDo *)todo {
    ToDoEditViewController *todoEditViewController = [Storyboard instantiateWithName:StoryboardNameToDoEdit identifier:StoryboardIdToDoEdit];
    todoEditViewController.type = ToDoEditViewControllerTypeEdit;
    todoEditViewController.todo = todo;
    [self.navigationController pushViewController:todoEditViewController animated:YES];
}

#pragma mark - 未使用のメソッド
- (void)deleteToDoInTableViewWithIndexPath:(NSIndexPath *)indexPath {
    [self.dataSource.todoList removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    if (self.dataSource.todoList.count == 0) {
        [self.view addSubview:self.emptyToDoView];
    }
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self movoToEditWithToDo:self.dataSource.todoList[indexPath.row]];
}

- (NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @[
             [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal
                                                title:LocalizedStringClosed.localized
                                              handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                                                  // TODO: ToDoを完了状態に変更し、一覧から削除する処理を記述する
                                              }],
             [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive
                                                title:LocalizedStringDelete.localized
                                              handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                                                  // TODO: ToDoを物理削除し、一覧から削除する処理を記述する
                                              }]];
}

#pragma mark - EmptyViewDelegate
- (void)emptyToDoView:(EmptyToDoView *)emptyToDoView didTouchButton:(UIButton *)button {
    [self movoToRegister];
}

@end
