//
//  DetailViewViewController.h
//  TableViewSample
//
//  Created by Felipe Paiva on 30/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TableView;


@protocol DetailDelegate <NSObject>

- (void) didSelected:(NSString *) param andIndex:(int) row;

@end

@interface DetailViewViewController : UIViewController

@property (strong, nonatomic) NSString *nome;
@property (weak, nonatomic) IBOutlet UILabel *lblNome;
@property (weak, nonatomic) IBOutlet UIButton *btnVoltar;
@property (weak, nonatomic) id<DetailDelegate> delegate;
@property (nonatomic) int index;

@end
