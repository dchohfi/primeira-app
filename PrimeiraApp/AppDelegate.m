//
//  AppDelegate.m
//  PrimeiraApp
//
//  Created by Diego Chohfi on 5/26/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "AppDelegate.h"

#import "MapViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize navController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    MapViewController *mapViewController = [[MapViewController alloc] init];
    
    self.navController = [[UINavigationController alloc] initWithRootViewController:mapViewController];
    
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
