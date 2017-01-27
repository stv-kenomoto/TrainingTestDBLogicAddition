//
//  ToDoCellCell.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/24.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ExpansionButton.h"
#import "Image.h"
#import "LocalizedString.h"
#import "NSDate+Format.h"
#import "NSString+Localization.h"
#import "Priority.h"
#import "Tag.h"
#import "ToDoCell.h"

@interface ToDoCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;
@property (weak, nonatomic) IBOutlet UILabel *localeLabel;
@property (weak, nonatomic) IBOutlet ExpansionButton *starButton;

@end

@implementation ToDoCell

static const NSInteger starExpansionValue = 30;

- (void)awakeFromNib {
    [super awakeFromNib];
    self.starButton.insets = UIEdgeInsetsMake(starExpansionValue, starExpansionValue, starExpansionValue, starExpansionValue);
}

- (IBAction)didTouchStar:(id)sender {
    // ToDo: ToDoの重要ON/OFFを切り替える処理を記述する
    [self setupStarButtonWithStar:self.todo.isStar];
}

- (void)setToDo:(ToDo *)todo {
    _todo = todo;
    self.titleLabel.text = _todo.title;
    self.priorityLabel.text = [Priority stringWithtype:_todo.priority];
    self.tagLabel.text = [Tag stringWithtype:_todo.tag];
    self.localeLabel.text = _todo.locale.length == 0 ? @"-" : _todo.locale;
    [self setupStarButtonWithStar:_todo.isStar];

    NSString *dateString = [_todo.date stringWithFormat:LocalizedStringDateFormat.localized];
    self.dateLabel.text = dateString.length == 0 ? @"-" : dateString;
}

- (void)setupStarButtonWithStar:(BOOL)star {
    NSString *starButtonImageName = star ? ImageStarOn : ImageStarOff;
    [self.starButton setImage:[UIImage imageNamed:starButtonImageName] forState:UIControlStateNormal];
}

@end
