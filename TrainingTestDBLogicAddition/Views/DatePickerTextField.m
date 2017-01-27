//
//  DatePickerTextField.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/25.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "DatePickerTextField.h"
#import "LocalizedString.h"
#import "NSDate+Format.h"
#import "NSString+Localization.h"

@interface DatePickerTextField () <UITextFieldDelegate>

@property (strong, nonatomic) UIDatePicker *datePicker;

@end

@implementation DatePickerTextField

- (instancetype)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

-(void)awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void)setDate:(NSDate *)date {
    if (date) {
        self.datePicker.date = date;
        self.text = [date stringWithFormat:LocalizedStringDateFormat.localized];
    } else {
        self.text = nil;
    }
}

- (NSDate *)date {
    if (self.text.length == 0) {
        return nil;
    }
    return self.datePicker.date;
}

- (void)cancelDidTouch:(UIBarButtonItem *)sender {
    self.date = nil;
    [self resignFirstResponder];
}

- (void)doneDidTouch:(UIBarButtonItem *)sender {
    self.date = self.datePicker.date;
    [self resignFirstResponder];
}

- (void)setup {
    self.delegate = self;
    self.datePicker = [[UIDatePicker alloc] init];

    UIToolbar *toolbar = [[UIToolbar alloc] init];
    [toolbar sizeToFit];

    UIBarButtonItem *canceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop
                                                                                 target:self
                                                                                 action:@selector(cancelDidTouch:)];

    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                 target:nil
                                                                                 action:nil];

    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:LocalizedStringDecision.localized
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                  action:@selector(doneDidTouch:)];

    toolbar.items = @[canceButton, flexibleSpace, doneButton, flexibleSpace];
    self.inputAccessoryView = toolbar;
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    textField.inputView = self.datePicker;
    return YES;
}

@end
