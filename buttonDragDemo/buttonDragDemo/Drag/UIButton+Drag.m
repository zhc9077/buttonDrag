//
//  UIButton+Drag.m
//  NSStringDemo
//
//  Created by 张潮 on 16/5/18.
//  Copyright © 2016年 nvshengpai. All rights reserved.
//

#import "UIButton+Drag.h"
#import <objc/runtime.h>


@implementation UIButton (Drag)

static char dragKey;
CGPoint beganPoint;

- (void)setDrag:(BOOL)drag
{
    objc_setAssociatedObject(self, &dragKey, @(drag), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)isDrag
{
    return [objc_getAssociatedObject(self, &dragKey) boolValue];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.superview];
    CGFloat x = point.x - self.center.x;
    CGFloat y = point.y - self.center.y;
    beganPoint = CGPointMake(x, y);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.isDrag) {
        UITouch *touch = [touches anyObject];
        CGPoint nowPoint = [touch locationInView:self.superview];
        CGFloat x = nowPoint.x - beganPoint.x;
        CGFloat y = nowPoint.y - beganPoint.y;
        self.center = CGPointMake(x, y);
    }
}

@end
