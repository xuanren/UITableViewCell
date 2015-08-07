//
//  TableViewCell.m
//  TableViewCellDemo
//
//  Created by renxuan on 15/8/5.
//  Copyright (c) 2015年 renxuan. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _lbName = [[UILabel alloc]initWithFrame:CGRectMake(70, 15, 200, 20)];
        self.lbName.font = [UIFont boldSystemFontOfSize:18];
        self.lbName.textColor = [UIColor grayColor];
        [self addSubview:_lbName];
        _lbInfo = [[UILabel alloc] initWithFrame:CGRectMake(250, 20, 200, 20)];
        [self addSubview:_lbInfo];
        self.lbInfo.font = [UIFont boldSystemFontOfSize:12];
        self.lbInfo.textColor = [UIColor orangeColor];
        _lbImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 5, 40, 40)];
        [self addSubview:_lbImageView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
