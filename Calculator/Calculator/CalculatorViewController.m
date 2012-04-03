//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Felipe Paiva on 11/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

//Private Methods Declaration
@interface CalculatorViewController ()
@property (nonatomic) BOOL userIsInTheMidleOfEnteringANumber;
@property (nonatomic, strong) CalculatorBrain *brain;
@end

@implementation CalculatorViewController
@synthesize display = _display;
@synthesize userIsInTheMidleOfEnteringANumber = _userIsInTheMidleOfEnteringANumber;
@synthesize brain = _brain;

-(CalculatorBrain *)brain
{
    if(!_brain) _brain = [[CalculatorBrain alloc] init];
    return _brain;
}

- (IBAction)digitPressed:(UIButton *)sender 
{
    //Destrinchada
    /*
    NSString *digit = [sender currentTitle];
    UILabel *myDisplay = [self display]; //Or self.display
    NSString *currentText = [myDisplay text]; //or myDisplay.text;
    NSString *newText = [currentText stringByAppendingString:digit];
    [myDisplay setText:newText]; // OR myDisplay.text = newText;
    */
    
    //Short Way
    NSString *digit = [sender currentTitle];
    if(self.userIsInTheMidleOfEnteringANumber){
        self.display.text = [self.display.text stringByAppendingString:digit];
    }else {
        self.display.text = digit;
        self.userIsInTheMidleOfEnteringANumber = YES;
    }
    
}

- (IBAction)enterPressed 
{
    /*
    [self.brain pushOperation:[self.display.text doubleValue]];
    
    self.userIsInTheMidleOfEnteringANumber = NO;
     */
}

- (IBAction)operationPressed:(UIButton *)sender 
{
    
    if(self.userIsInTheMidleOfEnteringANumber)[self enterPressed];
    double result = [self.brain performOperation:sender.currentTitle];
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
    
}

@end