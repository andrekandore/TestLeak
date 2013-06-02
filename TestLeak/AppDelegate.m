//
//  AppDelegate.m
//  TestLeak
//
//  Created by Aaron Sarazan on 6/1/13.
//  Copyright (c) 2013 Cue. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    TestViewController *controller = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    self.window.rootViewController = controller;    
    return YES;
}

@end
