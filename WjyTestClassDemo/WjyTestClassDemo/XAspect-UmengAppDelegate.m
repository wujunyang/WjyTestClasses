//
//  XAspect-UmengAppDelegate.m
//  testGt
//
//  Created by wujunyang on 16/6/22.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "jiaAppDelegate.h"
#import "XAspect.h"

#define AtAspect UmengAppDelegate

#define AtAspectOfClass jiaAppDelegate
@classPatchField(jiaAppDelegate)
AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    
    NSLog(@"友盟启动了");
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}
@end
#undef AtAspectOfClass
#undef AtAspect
