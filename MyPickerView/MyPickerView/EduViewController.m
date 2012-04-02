//
//  EduViewController.m
//  MyPickerView
//
//  Created by Felipe Paiva on 24/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "EduViewController.h"

@interface EduViewController ()
@end

@implementation EduViewController
@synthesize picker;
@synthesize lblTitulo;
@synthesize lblCorreto;

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    /*
    switch (component) {
        case 0:
            return [dataSourceInt count];
        break;
            
        case 1:
            return [dataSourceInt count];
            break;
     
        case 2:
            return [dataSourceInt count];
            break;
        
        case 3:
            return [dataSourceInt count];
            break;
            
        default:
            return 0;
            break;
    }
     */
    return [dataSourceInt count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 4;
}

//delegate
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [dataSourceInt objectAtIndex:row];
    /*
    switch (component) {
        case 0:
            return [dataSourceInt objectAtIndex:row];
            break;
        
        case 1:
            return [dataSourceInt objectAtIndex:row];
            break;
        case 2:
            return [dataSourceInt objectAtIndex:row];
            break;
        case 3:
            return [dataSourceInt objectAtIndex:row];
            break;
        default:
            return 0;
        break;
    } 
    */
}

//datasource
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    dataSourceCidade = [[NSMutableArray alloc] initWithObjects:@"Recife", @"Olinda", @"Paulista", nil];
    
    dataSourceEstados= [[NSMutableArray alloc] initWithObjects:@"Pernambuco", @"São Paulo", nil];

    
    NSString *url = [[NSBundle mainBundle] pathForResource:@"Range" ofType:@"plist"];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithContentsOfFile:url];

    dataSourceInt = [dic valueForKey:@"Range"];
    
    /*
    dataSourceInt = [[NSMutableArray alloc] 
                     initWithObjects:@"0",@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", nil];

     */
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row 
    inComponent:(NSInteger)component
{
    NSString *valor = [[NSString alloc] init];
    
    NSInteger i = 0;
    
    for (int i = 0; i < [self numberOfComponentsInPickerView:pickerView]; i++) {
        valor = [
                valor stringByAppendingString:
                 [dataSourceInt objectAtIndex:
                    [picker selectedRowInComponent:i]
                  ]
                 ];
    }
    
    i = [valor intValue];
    
    if(i == 9999){
        lblCorreto.text = @"Acertou";
    }else{
        lblCorreto.text = @"";
    }
    lblTitulo.text = valor;
}

- (void)viewDidUnload
{
    [self setPicker:nil];
    [self setLblTitulo:nil];
    [self setLblCorreto:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end