//
//  DetalhePratoViewController.h
//  Receitas
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Prato.h"

@interface DetalhePratoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblNome;

@property (weak, nonatomic) IBOutlet UILabel *lblDetalhe;

@property (weak, nonatomic) IBOutlet UILabel *lblPreco;

@property (strong, nonatomic) Prato *prato;

@end
