//
//  PS3Joystick.m
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import "PS3Joystick.h"

@implementation PS3Joystick
@synthesize type = _type;


-(void) select{
    NSLog(@"Select");
};

- (void) start{
    NSLog(@"Start");
};

- (void) keyUp {
    NSLog(@"KeyUp");
};

- (void) keyDown{
    NSLog(@"KeyDown");
};

- (void) keyLeft{
    NSLog(@"keyLeft");
};

- (void) keyRight{
    NSLog(@"KeyRight");
};

//===== ConsoleDelegate Methods

-(void) powerOff{
    NSLog(@"Desligando...");
}

@end
