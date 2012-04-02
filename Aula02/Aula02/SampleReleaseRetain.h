//
//  SampleReleaseRetain.h
//  Aula02
//
//  Created by Felipe Paiva on 16/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ClassA;

@interface SampleReleaseRetain : NSObject
{
    ClassA *objA;
}

- (void) print;

@property (nonatomic, retain) ClassA *objA;

@end