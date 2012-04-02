//
//  EduViewController.m
//  TableViewSample
//
//  Created by Felipe Paiva on 30/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "EduViewController.h"
#import "TableView.h"

@interface EduViewController ()

@end

@implementation EduViewController
@synthesize btnGoTabletView;
@synthesize tableView = _tableView;

- (IBAction)btnGoTableView:(id)sender {
    NSLog(@"teste");
    
    _tableView = [[TableView alloc] initWithNibName:@"TableView" bundle:nil];
    
    [self.navigationController pushViewController:_tableView animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBtnGoTabletView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
