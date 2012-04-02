//
//  BlueViewController.m
//  BookList
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController
@synthesize lblTeste;
@synthesize textBlue = _textBlue;


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
    lblTeste.text = _textBlue;
}

- (void)viewDidUnload
{
    [self setLblTeste:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
