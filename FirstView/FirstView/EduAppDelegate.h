//
//  EduAppDelegate.h
//  FirstView
//
//  Created by Felipe Paiva on 24/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EduViewController;

@interface EduAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EduViewController *viewController;

@property (strong, nonatomic) UINavigationController *navController;

@end
