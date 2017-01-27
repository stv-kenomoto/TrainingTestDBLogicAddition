//
//  ExpansionButton.m
//  TrainingTestDBLogicAddition
//
//  Created by Kouki Enomoto on 2017/01/26.
//  Copyright © 2017年 enomt. All rights reserved.
//

#import "ExpansionButton.h"

@implementation ExpansionButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect rect = self.bounds;
    rect.origin.x -= self.insets.left;
    rect.origin.y -= self.insets.top;
    rect.size.width += self.insets.left + self.insets.right;
    rect.size.height += self.insets.top + self.insets.bottom;
    return CGRectContainsPoint(rect, point);
}

@end
