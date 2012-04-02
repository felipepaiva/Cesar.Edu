//
//  NSString+reverse.m
//  UniversalControl
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "NSString+reverse.h"

@implementation NSString (reverse)
- (NSString *) reverseString
{
    NSMutableString *reversedStr;
    int len = [self length];
    
    reversedStr = [NSMutableString stringWithCapacity:len];
    
    while (len > 0) {
        [reversedStr appendString:[NSString stringWithFormat:@"%c", [self characterAtIndex:--len]]];
    }
    return reversedStr;
};
@end
