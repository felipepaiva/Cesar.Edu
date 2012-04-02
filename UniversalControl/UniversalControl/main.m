//
//  main.m
//  UniversalControl
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TvControleAppDelegate.h"
#import "Tv.h"
#import "Control.h"
#import "NSString+reverse.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([TvControleAppDelegate class]));
    }
    
    Tv *myTv = [[Tv alloc] init];
    Control *myControl = [[Control alloc] init];
    NSString *myString = @"Felipe";

    NSLog(@"Reversed = %@", myString.reverseString);

    [myControl addDelegate:myTv];
    [myControl powerOn];
}
