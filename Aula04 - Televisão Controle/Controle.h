//
//  Controle.h
//  Aula04 - Televisão Controle
//
//  Created by Felipe Paiva on 17/03/12.
//  Copyright (c) 2012 i2 Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol ControleDelegate <NSObject>

@required
- (void) buttonPressed: (int) parametro;

@end

@interface Controle : NSObject {
    id<ControleDelegate> delegate;
}

- (id) initWithDelegate :(id) delegate;

- (void) botaoPressionado: (int) pressionado; 
@end