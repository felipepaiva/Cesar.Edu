//
//  Controle.m
//  Aula04 - Televisão Controle
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "Controle.h"

@implementation Controle

- (id) initWithDelegate: (id) newDelegate
{
    if ([super init]!= nil) 
    {
        delegate = newDelegate;
    };
    return self;
};

- (void) botaoPressionado: (int) parameter
{
 
    [delegate performSelector:@selector(buttonPressed:)withObject:parameter];
    [delegate performSelector:@selector(buttonPressed:)];
};

@end