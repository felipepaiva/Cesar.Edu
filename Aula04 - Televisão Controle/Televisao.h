//
//  Televisao.h
//  Aula04 - Televisão Controle
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Controle.h"

@interface Televisao : NSObject <ControleDelegate>
{
    NSString *type;
};

@property (nonatomic,strong) NSString *type;

@end