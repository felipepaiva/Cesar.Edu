//
//  TableView.h
//  TableViewSample
//
//  Created by Felipe Paiva on 30/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewViewController.h"

@interface TableView : UITableViewController <DetailDelegate>

@property (strong, nonatomic) NSMutableArray *dataSource;

@end