//
//  CalculatorCalculatorBrain.m
//  Calculator
//
//  Created by Felipe Paiva on 11/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain() 
@property  (nonatomic,strong) NSMutableArray *operandStack;
@end

@implementation CalculatorBrain
@synthesize operandStack = _operandStack;


//What Synthesize does
- (NSMutableArray*)operandStack
{
    //Initializing because on first time its nil
    if(self.operandStack == nil){
        _operandStack = [[NSMutableArray alloc] init];
    }
    return _operandStack;
}

-(void)setOperandStack:(NSMutableArray *)operandStack
{  
    _operandStack = operandStack;
}
//What Synthesize does

-(double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if(operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (void)pushOperation:(double)operand
{
    //One Way
    //NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    //[self.operandStack  addObject:operandObject];
    
    //Better Way
    [self.operandStack  addObject:[NSNumber numberWithDouble:operand]];
};

- (double)performOperation:(NSString *)operation
{
    double result = 0;
    
    if([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    }else if ([@"*" isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    }
    
    [self pushOperation:result];
    // caculate result
    return result;
};


@end
