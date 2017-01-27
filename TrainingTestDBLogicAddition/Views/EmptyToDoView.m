//
//  EmptyToDoView.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "EmptyToDoView.h"
#import "UIView+Nib.h"

@implementation EmptyToDoView

- (IBAction)didTouchButton:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(emptyToDoView:didTouchButton:)]) {
        [self.delegate emptyToDoView:self didTouchButton:sender];
    }
}

@end
