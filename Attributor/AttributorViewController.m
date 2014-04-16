//
//  AttributorViewController.m
//  Attributor
//
//  Created by Igor de L. Andrade on 4/15/14.
//  Copyright (c) 2014 Igor de L. Andrade. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *headline;
@property (weak, nonatomic) IBOutlet UITextView *body;
@end

@implementation AttributorViewController

- (IBAction)changeBodySelectionColorToMatchBackgroundButton:(UIButton *)sender
{
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection
{
    [self.body.textStorage
     addAttributes:@{ NSStrokeWidthAttributeName: @-3,
                      NSStrokeColorAttributeName: [UIColor blackColor] }
     range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection
{
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
