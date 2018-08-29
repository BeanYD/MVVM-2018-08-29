//
//  HSDemoViewModel.m
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import "HSDemoViewModel.h"
#import "HSDemoModel.h"

@implementation HSDemoViewModel

- (instancetype)init {
    if (self = [super init]) {
        
        // 初始化数据源
        _dataSource = [NSMutableArray array];
    }
    
    return self;
}


- (void)loadBaseDataSource {
    
    for (int i = 0; i < 10; i++) {
        HSDemoModel *model = [[HSDemoModel alloc] initWithName:[NSString stringWithFormat:@"name%d", i] age:(i + 20) height:(i + 100)];
        
        [_dataSource addObject:model];
    }
}

- (void)addModels:(NSArray<HSDemoModel *> *)models complete:(void (^)(void))completeBlock {
    
    [_dataSource addObjectsFromArray:models];
}

- (HSDemoModel *)modelFromDataSourceWithIndex:(NSInteger)index {
    if (index >= _dataSource.count) {
        return nil;
    }
    
    return _dataSource[index];
}


// view的数据获取
- (NSString *)nameFromModelNum:(NSInteger)num {
    return [self modelFromDataSourceWithIndex:num].name;
}

- (NSInteger)ageFromModelNum:(NSInteger)num {
    return [self modelFromDataSourceWithIndex:num].age;
}

- (NSInteger)heightFromModelNum:(NSInteger)num {
    return [self modelFromDataSourceWithIndex:num].height;
}




@end
