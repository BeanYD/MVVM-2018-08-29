//
//  HSDemoModel.m
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import "HSDemoModel.h"

@implementation HSDemoModel

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age height:(NSInteger)height {
    if (self = [super init]) {
        _name = name;
        _age = age;
        _height = height;
    }
    
    return self;
}

@end
