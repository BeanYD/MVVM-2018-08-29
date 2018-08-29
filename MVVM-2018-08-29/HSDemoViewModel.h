//
//  HSDemoViewModel.h
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HSDemoModel;

// 某一个模块的内容的ViewModel
@interface HSDemoViewModel : NSObject

// 数据源相关
@property (strong, nonatomic, readonly) NSMutableArray *dataSource;

- (void)loadBaseDataSource;

// view的数据获取
- (NSString *)nameFromModelNum:(NSInteger)num;

- (NSInteger)ageFromModelNum:(NSInteger)num;

- (NSInteger)heightFromModelNum:(NSInteger)num;


// 网络请求相关——使用block回调，进行UI的操作


@end
