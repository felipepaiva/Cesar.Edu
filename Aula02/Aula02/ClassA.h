//
//  ClassA.h
//  Aula02
//
//  Created by Felipe Paiva on 16/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject 
{
    NSString *name;
}

- (void) print;

@property (nonatomic, retain) NSString *name;

@end