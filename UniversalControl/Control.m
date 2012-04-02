//
//  Control.m
//  UniversalControl
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "Control.h"

@implementation Control
@synthesize delegate = _delegate;

- (void) addDelegate:(id) newDelegate
{
    _delegate = newDelegate;
};


- (void) powerOn
{
    [delegate performSelector:@selector(controlEvent:) withObject:@"ON"];
};

- (void) powerOff
{
    [delegate performSelector:@selector(controlEvent:) withObject:@"OFF"];
};

@end
