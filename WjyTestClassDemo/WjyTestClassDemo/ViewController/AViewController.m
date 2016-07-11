//
//  AViewController.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/7/11.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "AViewController.h"
#import "detailsViewController.h"

@interface AViewController()
@property(nonatomic,strong)UIButton *goToViewControllerButton;
@end


@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"首页";
    
    if (!self.goToViewControllerButton) {
        self.goToViewControllerButton=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        [self.goToViewControllerButton setTitle:@"详情页面" forState:UIControlStateNormal];
        [self.goToViewControllerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.goToViewControllerButton addTarget:self action:@selector(goToViewController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.goToViewControllerButton];
    }
}


-(void)goToViewController
{
    detailsViewController *vc=[[detailsViewController alloc]initWithRouterParams:@"wujunyang" uid:@"123456"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
