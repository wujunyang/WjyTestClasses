//
//  AppDelegate.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/6/18.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //配置个推信息
    jiaGTConfigManager *gtConfig=[jiaGTConfigManager sharedInstance];
    gtConfig.jiaGTAppId=@"C83sm0U3xt5D5GUYqkfk53";
    gtConfig.jiaGTAppKey=@"13OydrjIuC8TZliF43hRS5";
    gtConfig.jiaGTAppSecret=@"gdgYQJSUNa5pIQB2icrCt1";
    
    ViewController *logInVc = [[ViewController alloc]init];
    self.window.rootViewController = logInVc;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}


/**
 *  @author wujunyang, 16-07-07 16:07:25
 *
 *  @brief  处理个推消息
 *
 *  @param notificationObject <#notificationObject description#>
 */
-(void)gtNotification:(NSObject *)notificationObject
{
    if (notificationObject) {
        NSNotification *curNotification=(NSNotification *)notificationObject;
        NSLog(@"%@",curNotification.userInfo[@"payload"]);
        NSLog(@"－－－－－接收到个推通知------");
    }
}


/**
 *  @author wujunyang, 16-07-07 16:07:40
 *
 *  @brief  处理远程苹果通知
 *
 *  @param notificationObject <#notificationObject description#>
 */
-(void)receiveRemoteNotification:(NSObject *)notificationObject
{
    if (notificationObject) {
        NSNotification *curNotification=(NSNotification *)notificationObject;
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"您有一条新消息" message:[NSString stringWithFormat:@"%@,%@",curNotification.userInfo[@"payload"],curNotification.userInfo[@"message"]] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    [super applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [super applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [super applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [super applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [super applicationWillTerminate:application];
}

@end
