//
//  AttributorAppDelegate.h
//  Attributor
//
//  Created by Igor de L. Andrade on 4/15/14.
//  Copyright (c) 2014 Igor de L. Andrade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface AttributorAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FirstViewController *firstVC;
@property (strong, nonatomic) UINavigationController *navController;

@end
