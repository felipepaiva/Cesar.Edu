//
//  BookCellViewController.h
//  BookList
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookCellViewController : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *lblTItle;
@property (nonatomic, weak) IBOutlet UILabel *lblAuthor;
@property (nonatomic, weak) IBOutlet UILabel *lblPublisher;

@end