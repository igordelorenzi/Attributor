//
//  FirstViewController.h
//  Attributor
//
//  Created by Igor de L. Andrade on 4/16/14.
//  Copyright (c) 2014 Igor de L. Andrade. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@interface FirstViewController : UIViewController

@property (nonatomic, strong) SecondViewController *secondViewController;

- (IBAction)goToNextView;

@end
