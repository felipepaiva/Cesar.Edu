//
//  Televisao.m
//  Aula04 - Televisão Controle
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "Televisao.h"

@implementation Televisao
@synthesize type = _type;

- (void) buttonPressed: (int) parametro
{
    switch (parametro) {
        case 1:
             NSLog(@"Caso 1");
            break;
        case 2:
             NSLog(@"Ligou");
            break;
    }
   
};

@end