//
//  ViewController.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/6/18.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(strong,nonatomic)UITapImageView *myImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!self.myImageView) {
        self.myImageView=[[UITapImageView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
        [self.myImageView addTapBlock:^(id obj) {
            NSLog(@"我是插件");
        }];
        self.myImageView.backgroundColor=[UIColor redColor];
        [self.view addSubview:self.myImageView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
