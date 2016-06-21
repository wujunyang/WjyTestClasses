//
//  ADeanAppDelegate+Hook.m
//  AppDelegateOptimization
//
//  Created by adorkable dean on 15/11/10.
//  Copyright © 2015年 ADean. All rights reserved.
//

#import "jiaMethodSwizzling.h"
#import "ADeanAppDelegate+Hook.h"


@implementation jiaAppDelegate (Hook)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self adean_AppDelegateHook];
    });
}

+ (void)adean_AppDelegateHook
{
    SwizzlingMethod([jiaAppDelegate class], @selector(application:didFinishLaunchingWithOptions:), @selector(adean_application:didFinishLaunchingWithOptions:));
    SwizzlingMethod([jiaAppDelegate class], @selector(application:handleOpenURL:), @selector(adean_application:handleOpenURL:));
    SwizzlingMethod([jiaAppDelegate class], @selector(application:openURL:sourceApplication:annotation:), @selector(adean_application:openURL:sourceApplication:annotation:));
    SwizzlingMethod([jiaAppDelegate class], @selector(applicationDidReceiveMemoryWarning:), @selector(adean_applicationDidReceiveMemoryWarning:));
    
}

#pragma mark - Method Swizzling
- (BOOL)adean_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"我来的");
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
