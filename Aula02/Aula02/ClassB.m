//
//  ClassB.m
//  Aula02
//
//  Created by Felipe Paiva on 16/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "ClassB.h"
#import "ClassA.h"

@implementation ClassB 


- (ClassA*) getClassA{
    
    return [[[ClassA alloc] init] autorelease];
}

@end
