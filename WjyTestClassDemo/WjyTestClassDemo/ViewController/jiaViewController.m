//
//  jiaViewController.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/7/11.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "jiaViewController.h"

@implementation jiaViewController

//统一接收路由信息
- (id)initWithRouterParams:(NSDictionary *)params {
    self = [super init];
    if (self) {
        _routableDictionary=params;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
