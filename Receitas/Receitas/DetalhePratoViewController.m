//
//  DetalhePratoViewController.m
//  Receitas
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "DetalhePratoViewController.h"

@interface DetalhePratoViewController ()

@end

@implementation DetalhePratoViewController
@synthesize lblNome;
@synthesize lblDetalhe;
@synthesize lblPreco;
@synthesize prato = _prato;

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
    // Do any additional setup after loading the view from its nib.
        
    lblNome.text = _prato.nome;
    lblDetalhe.text = _prato.descricao;
    lblPreco.text = _prato.preco;
}

- (void)viewDidUnload
{
    [self setLblNome:nil];
    [self setLblDetalhe:nil];
    [self setLblPreco:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
