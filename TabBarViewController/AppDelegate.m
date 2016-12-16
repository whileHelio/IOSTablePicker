//
//  AppDelegate.m
//  TabBarViewController
//
//  Created by Helio Carvalho on 06/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIViewController *feedViewController =[[UIViewController alloc]init];
    feedViewController.title=@"Feed";
    
    UIViewController *favouritesViewController=[[UIViewController alloc]init];
    favouritesViewController.title=@"Favourites";
    
    feedViewController.view.backgroundColor=[UIColor redColor];
    favouritesViewController.view.backgroundColor=[UIColor greenColor];
    
    UITabBarController *tabBarController=[[UITabBarController alloc]init];
    
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];//dizer que a janela tem o visor com o tamanho todo
    
    self.window.rootViewController=tabBarController; // a seguir dizemos que o controller principal é a tab bar controller
    
    [self.window makeKeyAndVisible];// deixa a janela visivel
    
    [tabBarController setViewControllers:@[feedViewController, favouritesViewController]];//aplicar as UIViewControllers á tabBar
    
    
    
    
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
