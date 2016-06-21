//
//  ADeanAppDelegate+Hook.m
//  AppDelegateOptimization
//
//  Created by wujunyang dean.
//  Copyright © 2016年 ADean. All rights reserved.
//

#import "ADeanMethodSwizzling.h"
#import "ADeanAppDelegate+Hook.h"


@implementation AppDelegate (Hook)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self adean_AppDelegateHook];
    });
}

+ (void)adean_AppDelegateHook
{
    SwizzlingMethod([AppDelegate class], @selector(application:didFinishLaunchingWithOptions:), @selector(adean_application:didFinishLaunchingWithOptions:));
    SwizzlingMethod([AppDelegate class], @selector(application:handleOpenURL:), @selector(adean_application:handleOpenURL:));
    SwizzlingMethod([AppDelegate class], @selector(application:openURL:sourceApplication:annotation:), @selector(adean_application:openURL:sourceApplication:annotation:));
    SwizzlingMethod([AppDelegate class], @selector(applicationDidReceiveMemoryWarning:), @selector(adean_applicationDidReceiveMemoryWarning:));
    
}

#pragma mark - Method Swizzling
- (BOOL)adean_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"我加载友盟了");
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
    });
    
    return [self adean_application:application didFinishLaunchingWithOptions:launchOptions];
}


- (BOOL)adean_application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [self adean_application:application handleOpenURL:url];
}

- (BOOL)adean_application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [self adean_application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}

-  (void)adean_applicationDidReceiveMemoryWarning:(UIApplication *)application {
    
    [self adean_applicationDidReceiveMemoryWarning:application];
}

#pragma mark
#pragma mark Other Action

@end
