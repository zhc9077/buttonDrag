//
//  ViewController.m
//  buttonDragDemo
//
//  Created by 张潮 on 16/5/18.
//  Copyright © 2016年 nvshengpai. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Drag.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
    // 只需要调用一句话实现按钮拖拽
    [btn setDrag:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
