//
//  EduViewController.m
//  FirstView
//
//  Created by Felipe Paiva on 24/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "EduViewController.h"
#import "SecondView.h"
#import "ThirdView.h"

@interface EduViewController ()

@end

@implementation EduViewController
@synthesize btnGoSecondView;
@synthesize btnGoThirdView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)loadSecondView:(id)sender {
    SecondView *secondView = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    
    [[self navigationController] pushViewController:secondView animated:YES];
    
}

- (IBAction)loadThirdView:(id)sender {
    ThirdView *thirdView = [[ThirdView alloc] initWithNibName:@"ThirdView" bundle:nil];
    
    thirdView.nome = @"Vai Filhão";
    
    [[self navigationController] pushViewController:thirdView animated:YES];
}


- (void)viewDidUnload
{
    [self setBtnGoSecondView:nil];
    [self setBtnGoThirdView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
