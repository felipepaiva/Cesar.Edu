//
//  DetailViewViewController.m
//  TableViewSample
//
//  Created by Felipe Paiva on 30/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "DetailViewViewController.h"
#import "TableView.h"

@interface DetailViewViewController ()

@end

@implementation DetailViewViewController

@synthesize nome = _nome;
@synthesize lblNome = _lblNome;
@synthesize btnVoltar = _btnVoltar;
@synthesize delegate = _delegate;
@synthesize index = _index;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)btnVoltar:(id)sender {
    [_delegate didSelected:@"ItemSelecionado" andIndex:_index];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
 
    _lblNome.text = _nome;
}

- (void)viewDidUnload
{
    [self setLblNome:nil];
    [self setBtnVoltar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
