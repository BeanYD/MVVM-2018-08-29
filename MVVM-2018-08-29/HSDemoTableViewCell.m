//
//  HSDemoTableViewCell.m
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import "HSDemoTableViewCell.h"

@implementation HSDemoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)loadCellWithName:(NSString *)name age:(NSInteger)age height:(NSInteger)height {
    _nameLabel.text = name;
    _ageLabel.text = [NSString stringWithFormat:@"%zd", age];
    _heightLabel.text = [NSString stringWithFormat:@"%zd", height];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
