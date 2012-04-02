//
//  SampleReleaseRetain.m
//  Aula02
//
//  Created by Felipe Paiva on 16/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "SampleReleaseRetain.h"
#import "ClassA.h"

@implementation SampleReleaseRetain

@synthesize objA = _objA;

- (void) print{
    
}

- (void) dealloc
{
    [super dealloc];
    [_objA release];
};

@end