//
//  XAspect-RoutableAppDelegate.m
//  WjyTestClassDemo
//
//  Created by wujunyang on 16/7/11.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "jiaAppDelegate.h"
#import "XAspect.h"
#import "Routable.h"

#define AtAspect RoutableAppDelegate

#define AtAspectOfClass jiaAppDelegate
@classPatchField(jiaAppDelegate)

@synthesizeNucleusPatch(Default, -, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions);


AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    [self InitializationRoute];
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}

//注册路由
-(void)InitializationRoute
{
    [[Routable sharedRouter] map:@"detailsViewController/:userName/:uid" toController:NSClassFromString(@"detailsViewController")];
    [[Routable sharedRouter] map:@"CViewController" toController:NSClassFromString(@"CViewController")];
}

@end
#undef AtAspectOfClass
#undef AtAspect