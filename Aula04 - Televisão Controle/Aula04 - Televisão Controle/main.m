//
//  main.m
//  Aula04 - Televisão Controle
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TvControleAppDelegate.h"
#import "Controle.h"
#import "Televisao.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([TvControleAppDelegate class]));
    }
    
    Televisao *tv = [[Televisao alloc] init];
    
    Controle *cont = [[Controle alloc] initWithDelegate:tv]; 
    
    [cont botaoPressionado:1];
};