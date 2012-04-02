//
//  EduViewController.h
//  MyPickerView
//
//  Created by Felipe Paiva on 24/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EduViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSMutableArray *dataSourceEstados;
    NSMutableArray *dataSourceCidade;
    NSMutableArray *dataSourceInt;
    
}

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *lblTitulo;
@property (weak, nonatomic) IBOutlet UILabel *lblCorreto;

@end