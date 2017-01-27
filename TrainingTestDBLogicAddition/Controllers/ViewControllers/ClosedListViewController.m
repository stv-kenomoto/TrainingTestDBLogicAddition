//
//  ClosedListViewController.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ClosedListViewController.h"
#import "ClosedListViewDataSource.h"
#import "EmptyClosedView.h"
#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "UIView+Nib.h"

@interface ClosedListViewController () <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) EmptyClosedView *emptyClosedView;
@property (strong, nonatomic) ClosedListViewDataSource *dataSource;

@end

@implementation ClosedListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupEmptyView];
    [self setupTableView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self loadToDo];
}

- (void)setupEmptyView {
    self.emptyClosedView = [EmptyClosedView defaultViewFromNib];
}

- (void)setupTableView {
    self.tableView.delegate = self;
}

- (void)addEmptyClosedView {
    self.emptyClosedView.frame = self.view.frame;
    [self.view addSubview:self.emptyClosedView];
}

- (void)removeEmptyClosedView {
    [self.emptyClosedView removeFromSuperview];
}

- (void)loadToDo {
    // TODO: 完了履歴を取得する処理を記述する
    NSArray<CloseHistory *> *closeHistories = @[];
    if (closeHistories.count == 0) {
        [self addEmptyClosedView];
    } else {
        [self removeEmptyClosedView];
        self.dataSource = [[ClosedListViewDataSource alloc] initWithCloseHistories:[closeHistories mutableCopy]];
        self.tableView.dataSource = self.dataSource;
    }
}

#pragma mark - 未使用のメソッド
- (void)deleteToDoInTableViewWithIndexPath:(NSIndexPath *)indexPath {
    [self.dataSource.closeHistories removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    if (self.dataSource.closeHistories.count == 0) {
        [self addEmptyClosedView];
    }
}

#pragma mark - UITableViewDelegate
- (NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    return @[
             [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal
                                                title:LocalizedStringUnclosed.localized
                                              handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                                                  // TODO: ToDoを未完了状態に変更し、一覧から削除する処理を記述する
                                              }],
             [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive
                                                title:LocalizedStringDelete.localized
                                              handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                                                  // TODO: ToDoと完了履歴を物理削除し、一覧から削除する処理を記述する
                                              }]];
}

@end
