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
@property (weak, nonatomic) IBOutlet UIButton *outlineButton;
@end

@implementation AttributorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view,
    // typically from a storeborad.
    
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc]
                                        initWithString:self.outlineButton.currentTitle];
    
    [title setAttributes:@{ NSStrokeWidthAttributeName: @-3,
                            NSStrokeColorAttributeName: [UIColor blackColor] }
                   range:NSMakeRange(0, [title length])];
    
    [self.outlineButton setAttributedTitle:title forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self usePreferredFonts];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(preferredFontsChanged)
     // Posted when the user changes the preferred content size setting.
     name:UIContentSizeCategoryDidChangeNotification
     // Qualquer um pode mandar a noficacao
     object:nil];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [[NSNotificationCenter defaultCenter]
     removeObserver:self
     name:UIContentSizeCategoryDidChangeNotification
     object:nil];
}

- (void)preferredFontsChanged
{
    [self usePreferredFonts];
}

- (void)usePreferredFonts
{
    self.headline.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    self.body.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
