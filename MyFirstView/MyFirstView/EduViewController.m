//
//  EduViewController.m
//  MyFirstView
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "EduViewController.h"

@interface EduViewController ()

@end

@implementation EduViewController
@synthesize btnConfirmar;
@synthesize txtNome;
@synthesize lblNome;
@synthesize selectControl;


- (IBAction)selected:(id)sender {
    NSLog(@"index %@", 
          [selectControl titleForSegmentAtIndex: 
          [selectControl selectedSegmentIndex]
           ] 
          );
    
    lblNome.text = [selectControl titleForSegmentAtIndex: [selectControl selectedSegmentIndex]
                    ];
    
}

- (IBAction)closeKeyboard:(id)sender {
    [txtNome resignFirstResponder];
}

- (IBAction)btnOK:(id)sender {
    
    
    UIAlertView *alert = [
                            [UIAlertView alloc]
                            initWithTitle:@"Oi Delicia" 
                            message:@"Ai se eu te pego ai ai!" 
                            delegate:nil 
                            cancelButtonTitle:@"Ai Ai"
                            otherButtonTitles:nil
                          ];
    
    lblNome.text = txtNome.text;
    [alert show];
}

#pragma mark - teste
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBtnConfirmar:nil];
    [self setTxtNome:nil];
    [self setLblNome:nil];
    [self setSelectControl:nil];
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end