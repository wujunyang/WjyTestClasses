//
//  AppDelegate.h
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/6/18.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "jiaAppDelegate.h"
#import "jiaGTConfigManager.h"
#import "MPHomeViewController.h"

@interface AppDelegate :jiaAppDelegate<UIAlertViewDelegate>

@property(nonatomic, strong)   MPHomeViewController *homeViewController;

@end

