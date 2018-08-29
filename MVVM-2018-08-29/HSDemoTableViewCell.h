//
//  HSDemoTableViewCell.h
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSDemoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;

- (void)loadCellWithName:(NSString *)name age:(NSInteger)age height:(NSInteger)height;

@end
