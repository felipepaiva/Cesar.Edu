//
//  EduViewController.m
//  BookList
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "EduViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

@interface EduViewController ()

@end

@implementation EduViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"identBlueView"]) {
        BlueViewController *blue = [segue destinationViewController];
        blue.textBlue = @"Vai filhão";
    }
    
    if ([[segue identifier] isEqualToString:@"identRedView"]) {
        RedViewController *red = [segue destinationViewController];
        red.nome = @"Vai filhão";
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
