//
//  UIButton+Drag.h
//  NSStringDemo
//
//  Created by 张潮 on 16/5/18.
//  Copyright © 2016年 nvshengpai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Drag)

/** 是否可以拖拽 */
@property (assign, nonatomic, getter = isDrag) BOOL drag;

@end
