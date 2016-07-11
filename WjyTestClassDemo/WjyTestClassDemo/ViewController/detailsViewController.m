//
//  detailsViewController.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/7/11.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "detailsViewController.h"

@interface detailsViewController()
@property(nonatomic,copy)NSString *userName,*uid;
@end

@implementation detailsViewController

- (instancetype)initWithRouterParams:(NSString *)userName uid:(NSString *)uid
{
    self = [super init];
    if (self) {
        _userName=userName;
        _uid=uid;
        
        NSLog(@"从控制器跳转进来：%@",_userName);
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    
    if (super.routableDictionary) {
        NSLog(@"从路由跳转进来%@",[super.routableDictionary objectForKey:@"uid"]);
    }
    
    self.navigationItem.title=@"详情页面";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
