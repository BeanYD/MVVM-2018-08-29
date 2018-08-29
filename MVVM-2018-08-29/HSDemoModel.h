//
//  HSDemoModel.h
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSDemoModel : NSObject

@property (copy, nonatomic, readonly) NSString *name;

@property (assign, nonatomic, readonly) NSInteger age;

@property (assign, nonatomic, readonly) NSInteger height;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age height:(NSInteger)height;

@end
