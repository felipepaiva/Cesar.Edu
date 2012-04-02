//
//  main.m
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Aula03AppDelegate.h"
#import "PS3Joystick.h"
#import "Console.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([Aula03AppDelegate class]));
    }
    
    PS3Joystick *ps3 = [[PS3Joystick alloc] init];
    ps3.type = @"ps3";
    
    Console *console = [[Console alloc] initWithDelegate:ps3];
    
    [console play];
    
    /*
    //NSLog(@"Type = %@", [ps3 valueForKey:@"type"]);
    
    NSLog(@"Type = %@", ps3.type);
    
    //Key Up
    [ps3 keyUp];
    
    if ([ps3 respondsToSelector:@selector(analogLeft)]) {
        [ps3 analogLeft];
    }
    
    [ps3 performSelector:@selector(keyUp)];
    //[ps3 performSelector:@selector(analogRight)];
     */
}