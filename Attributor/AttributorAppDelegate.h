//
//  AttributorAppDelegate.h
//  Attributor
//
//  Created by Igor de L. Andrade on 4/15/14.
//  Copyright (c) 2014 Igor de L. Andrade. All rights reserved.
//

#import <UIKit/UIKit.h>

// Só diz "FirstViewController é uma classe" para o compilador
// Mas não são conhecidos os métodos da classe (isso exije o import)
@class FirstViewController;

@interface AttributorAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FirstViewController *firstVC;
@property (strong, nonatomic) UINavigationController *rootController;

@end
