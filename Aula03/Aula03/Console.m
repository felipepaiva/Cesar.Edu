//
//  Player.m
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//
#import "Console.h"

@implementation Console
- (id) initWithDelegate: (id) newDelegate
{
    if ([super init]!= nil) 
    {
        delegate = newDelegate;
    };
    return self;
};

- (void) play
{
    [delegate performSelector:@selector(powerOff)];
};

@end