//
//  BookCellViewController.m
//  BookList
//
//  Created by Felipe Paiva on 31/03/12.
//  Copyright (c) 2012 i2 Mobile Solutions. All rights reserved.
//

#import "BookCellViewController.h"

@implementation BookCellViewController


@synthesize lblPublisher = _lblPublisher;
@synthesize lblAuthor = _lblAuthor;
@synthesize lblTItle = _lblTItle;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
