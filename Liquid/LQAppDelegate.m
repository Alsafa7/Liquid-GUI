//
//  LQAppDelegate.m
//  Liquid
//
//  Created by Brave Heart on 7/21/14.
//  Copyright (c) 2014 iOSCheaters. All rights reserved.
//

#import "LQAppDelegate.h"

@implementation LQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSShadow *shadow = [[NSShadow alloc] init];
    [shadow setShadowOffset:CGSizeMake(1.0f, 1.0f)];
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIFont fontWithName:@"Arial" size:25.0f], NSFontAttributeName,
                                                          [UIColor colorWithRed:0.0f green:87.0f/255.0f blue:130.0f/255.0f alpha:1.0f], NSForegroundColorAttributeName,
                                                          shadow, NSShadowAttributeName,
                                                          nil]];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.window.bounds.size.width, 20)];
    view.backgroundColor = [UIColor colorWithRed:0.0f green:127.0f/255.0f blue:1.0f alpha:1.0f];
    [self.window.rootViewController.view addSubview:view];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
