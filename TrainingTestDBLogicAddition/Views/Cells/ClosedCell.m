//
//  ClosedCell.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/27.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ClosedCell.h"
#import "LocalizedString.h"
#import "NSDate+Format.h"
#import "NSString+Localization.h"
#import "Priority.h"
#import "Tag.h"

@interface ClosedCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;
@property (weak, nonatomic) IBOutlet UILabel *localeLabel;
@property (weak, nonatomic) IBOutlet UILabel *closeDateLabel;

@end

@implementation ClosedCell

- (void)setCloseHistory:(CloseHistory *)closeHistory {
    _closeHistory = closeHistory;
    self.titleLabel.text = _closeHistory.title;
    self.priorityLabel.text = [Priority stringWithtype:_closeHistory.priority];
    self.tagLabel.text = [Tag stringWithtype:_closeHistory.tag];
    self.localeLabel.text = _closeHistory.locale.length == 0 ? @"-" : _closeHistory.locale;

    NSString *closeDateString = [_closeHistory.closeDate stringWithFormat:LocalizedStringDateFormat.localized];
    self.closeDateLabel.text = closeDateString.length == 0 ? @"-" : closeDateString;
}

@end
