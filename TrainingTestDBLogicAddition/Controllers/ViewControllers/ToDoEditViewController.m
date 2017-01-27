//
//  EditViewController.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "Alert.h"
#import "DatePickerTextField.h"
#import "Image.h"
#import "LocalizedString.h"
#import "NSString+Localization.h"
#import "ToDoEditViewController.h"

@interface ToDoEditViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet DatePickerTextField *datePickerTextField;
@property (weak, nonatomic) IBOutlet UITextField *localeTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *prioritySegmentedControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tagSegmentedControl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *starSegmentedControl;

@end

@implementation ToDoEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupRightBarButtonItem];
    self.titleTextField.delegate = self;
    self.localeTextField.delegate = self;

    if (self.type == ToDoEditViewControllerTypeEdit) {
        self.title = LocalizedStringEdit.localized;
        [self setupToDoInView];
    }
}

- (IBAction)didTouchSave:(UIBarButtonItem *)sender {
    if (self.titleTextField.text.length == 0) {
        [self presentViewController:[Alert requiredTitleAlertController] animated:YES completion:nil];
        return;
    }

    ToDo *todo = [[ToDo alloc] init];
    todo.title = self.titleTextField.text;
    todo.date = self.datePickerTextField.date;
    todo.locale = self.localeTextField.text;
    todo.priority = self.prioritySegmentedControl.selectedSegmentIndex;
    todo.tag = self.tagSegmentedControl.selectedSegmentIndex;
    todo.isClose = NO;
    todo.isStar = self.starSegmentedControl.selectedSegmentIndex;

    if (self.type == ToDoEditViewControllerTypeEdit) {
        todo.identifier = self.todo.identifier;
    }

    // TODO: ToDoを新規登録または編集する処理を記述する
    // また、処理の成功可否によって以下の処理をおこなう
    // [成功した場合]
    // ToDo一覧画面へ戻る
    // [失敗した場合]
    // エラーダイアログを表示する
}

- (void)didTouchClose:(UIBarButtonItem *)sender {
    [self presentViewController:[Alert closeToDoAlertControllerWithHandler:^(UIAlertAction *action) {
        // TODO: ToDoを完了にする処理を記述する
        // また、処理の成功可否によって以下の処理をおこなう
        // [成功した場合]
        // ToDo一覧画面へ戻る
        // [失敗した場合]
        // エラーダイアログを表示する
    }] animated:YES completion:nil];
}

- (void)didTouchDelete:(UIBarButtonItem *)sender {
    [self presentViewController:[Alert deleteToDoAlertControllerWithHandler:^(UIAlertAction *action) {
        // TODO: ToDoを削除する処理を記述する
        // また、処理の成功可否によって以下の処理をおこなう
        // [成功した場合]
        // ToDo一覧画面へ戻る
        // [失敗した場合]
        // エラーダイアログを表示する
    }] animated:YES completion:nil];
}

- (void)setupRightBarButtonItem {
    switch (self.type) {
        case ToDoEditViewControllerTypeEdit:
        {
            UIBarButtonItem *closeBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:ImageCloseNavigationBar]
                                                                                   style:UIBarButtonItemStylePlain
                                                                                  target:self
                                                                                  action:@selector(didTouchClose:)];

            UIBarButtonItem *deleteBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash
                                                                                                 target:self
                                                                                                 action:@selector(didTouchDelete:)];

            self.navigationItem.rightBarButtonItems = @[self.navigationItem.rightBarButtonItem, closeBarButtonItem, deleteBarButtonItem];
            break;
        }

        default:
            break;
    }
}

- (void)setupToDoInView {
    self.titleTextField.text = self.todo.title;
    self.datePickerTextField.date = self.todo.date;
    self.localeTextField.text = self.todo.locale;
    self.prioritySegmentedControl.selectedSegmentIndex = self.todo.priority;
    self.tagSegmentedControl.selectedSegmentIndex = self.todo.tag;
    self.starSegmentedControl.selectedSegmentIndex = self.todo.isStar;
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([self.titleTextField isFirstResponder]) {
        [self.titleTextField resignFirstResponder];
    }

    if ([self.localeTextField isFirstResponder]) {
        [self.localeTextField resignFirstResponder];
    }

    return NO;
}


@end
