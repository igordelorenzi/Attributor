//
//  FirstViewController.m
//  Attributor
//
//  Created by Igor de L. Andrade on 4/16/14.
//  Copyright (c) 2014 Igor de L. Andrade. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

//@synthesize secondViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Main View";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToNextView
{
    self.secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:self.secondViewController animated:YES];
}
@end
