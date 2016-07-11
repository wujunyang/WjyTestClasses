//
//  DViewController.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/7/11.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "DViewController.h"
#import "EViewController.h"

@interface DViewController()
@property(nonatomic,strong)UIButton *goToViewControllerButton;
@end


@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"我的";
    
    if (!self.goToViewControllerButton) {
        self.goToViewControllerButton=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
        [self.goToViewControllerButton setTitle:@"跳转到个人信息" forState:UIControlStateNormal];
        [self.goToViewControllerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.goToViewControllerButton addTarget:self action:@selector(goToViewController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.goToViewControllerButton];
    }
    
}

-(void)goToViewController
{
    EViewController *vc=[[EViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
