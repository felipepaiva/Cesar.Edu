//
//  EduViewController.h
//  TableViewSample
//
//  Created by Felipe Paiva on 30/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TableView;
@class DetailViewViewController;

@interface EduViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnGoTabletView;

@property (strong, nonatomic) TableView *tableView;

@property (strong, nonatomic) DetailViewViewController *detailViewController;

@end
