//
//  PS3Joystick.h
//  Aula03
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Joystick.h"
#import "Console.h"

@interface PS3Joystick : NSObject <Joystick, ConsoleDelegate>{
    NSString* type;
}

@property (nonatomic, strong) NSString *type;

@end