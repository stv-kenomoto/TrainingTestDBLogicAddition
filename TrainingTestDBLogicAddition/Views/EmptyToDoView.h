//
//  EmptyToDoView.h
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

@import UIKit;

@class EmptyToDoView;

@protocol EmptyToDoViewDelegate <NSObject>

@optional
- (void)emptyToDoView:(EmptyToDoView *)emptyToDoView didTouchButton:(UIButton *)button;

@end

@interface EmptyToDoView : UIView

@property (weak, nonatomic) id<EmptyToDoViewDelegate> delegate;

@end
