//
//  Control.h
//  UniversalControl
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol COntrolDelegate <NSObject>
- (void) controlEvent:(NSString*) event;
@end

@interface Control : NSObject{
    id<COntrolDelegate> delegate;
}

@property (nonatomic, weak) id<COntrolDelegate> delegate;

- (void) addDelegate:(id) newDelegate;
- (void) powerOn;
- (void) powerOff;

@end
