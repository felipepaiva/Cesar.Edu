//
//  CalculatorCalculatorBrain.h
//  Calculator
//
//  Created by Felipe Paiva on 11/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject


- (void)pushOperation:(double)operand;
- (double)performOperation:(NSString *)operation;

@end
