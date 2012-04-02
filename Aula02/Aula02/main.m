//
//  main.m
//  Aula02
//
//  Created by Felipe Paiva on 16/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Aula02AppDelegate.h"
#import "SampleReleaseRetain.h"
#import "ClassA.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([Aula02AppDelegate class]));
    }
    
    ClassA *objA = [[ClassA alloc] init];
    objA.name = @"Teste";
    
    NSLog(@" alloc --- %d", [objA retainCount]);
    
    SampleReleaseRetain *srr = [[SampleReleaseRetain alloc] init];
    NSLog(@" alloc ---- %d", [objA retainCount]);
    
    [srr.objA print];
    
    srr.objA = objA; 
    NSLog(@" alloc ----- %d", [objA retainCount]);

    [objA retain];
    NSLog(@"alloc ------ %d", [objA retainCount]);
    
    [srr release];
    NSLog(@" alloc ------ %d", [objA retainCount]);
    
    NSLog(@" total %d", [objA retainCount]);
    
}