//
//  Player.h
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Joystick.h"

@protocol ConsoleDelegate <NSObject>

@required
-(void) powerOff;

@end

@interface Console : NSObject
{
    id<ConsoleDelegate> delegate;
}

- (id) initWithDelegate: (id) delegate;
- (void) play;
@end