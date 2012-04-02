//
//  AdicionarPratoViewController.m
//  Receitas
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "AdicionarPratoViewController.h"

@interface AdicionarPratoViewController ()

@end

@implementation AdicionarPratoViewController
@synthesize btnCancel;


- (IBAction)btnCancel:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setBtnCancel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
