//
//  EduViewController.h
//  MyFirstView
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EduViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnConfirmar;
@property (weak, nonatomic) IBOutlet UITextField *txtNome;
@property (weak, nonatomic) IBOutlet UILabel *lblNome;
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectControl;

@end