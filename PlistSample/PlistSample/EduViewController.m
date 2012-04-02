//
//  EduViewController.m
//  PlistSample
//
//  Created by Felipe Paiva on 24/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "EduViewController.h"

@interface EduViewController ()

@end

@implementation EduViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *url = [[NSBundle mainBundle] pathForResource:@"User" ofType:@"plist"];

    NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:url];

    users = [dic valueForKey:@"User"];
    
    for (int i = 0; i < users.count; i++) {
        NSDictionary *dic = [users objectAtIndex:i];
        NSLog(@"NOme = %@ EMail = %@", [dic valueForKey:@"Nome"], [dic valueForKey:@"Email"]);
    }
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
