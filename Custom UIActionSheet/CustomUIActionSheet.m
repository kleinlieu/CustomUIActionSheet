//
//  CustomUIActionSheet.m
//  Custom UIActionSheet
//
//  Created by Lieu, Klein on 10/21/13.
//  Copyright (c) 2013 Constant Contact. All rights reserved.
//

#import "CustomUIActionSheet.h"

@implementation CustomUIActionSheet

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (!self.clipsToBounds && !self.hidden && self.alpha > 0) {
        for (UIView *subview in self.subviews.reverseObjectEnumerator) {
            CGPoint subPoint = [subview convertPoint:point fromView:self];
            UIView *result = [subview hitTest:subPoint withEvent:event];
            if (result != nil) {
                return result;
                break;
            }
        }
    }
    
    return [super hitTest:point withEvent:event];
}

@end
