//
//  Joystick.h
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Console.h"

@protocol Joystick <NSObject>

@required
- (void) select;
- (void) start;
- (void) keyUp;
- (void) keyDown;
- (void) keyLeft;
- (void) keyRight;


@optional
- (void) analogLeft;
- (void) analogRight;

@end

- (id) initWithDelegate: (id) delegate;

- (void) play;

@end