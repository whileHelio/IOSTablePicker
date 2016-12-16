//
//  AppDelegate.h
//  training2
//
//  Created by Helio Carvalho on 27/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class FirstViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) ViewController * ViewController;
@property (strong,nonatomic) FirstViewController * firstView;
@property (strong, nonatomic) UIWindow *window;


@end

