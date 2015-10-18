//
//  AppDelegate.m
//  sdf
//
//  Created by C. Brody on 10/18/15.
//  Copyright (c) 2015 C. Brody. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import <JavaScriptCore/JSContext.h>
#import <JavaScriptCore/JSValue.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // http://codefromabove.com/2014/09/xcode-6-removing-storyboards-and-creating-useful-empty-projects/
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];

    // http://www.makemegeek.com/uitableview-example-ios/
    self.window.rootViewController = [[ViewController alloc] init];

    [self.window makeKeyAndVisible];
    JSContext * context = [[JSContext alloc] init];
    //[ct evaluateScript: @"context.log('asd')"];
    JSValue * t = [context evaluateScript: @"3+4"];
    NSLog(@"sum from Javascript: %d", [t toInt32]);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
