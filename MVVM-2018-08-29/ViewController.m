//
//  ViewController.m
//  MVVM-2018-08-29
//
//  Created by dingbinbin on 2018/8/29.
//  Copyright © 2018年 dingbinbin. All rights reserved.
//

#import "ViewController.h"
#import "HSDemoTableViewCell.h"
#import "HSDemoViewModel.h"

#define CELL_ID @"HSDemoTableViewCellID"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) HSDemoViewModel *viewModel;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
    
    self.viewModel = [[HSDemoViewModel alloc] init];
    [self.viewModel loadBaseDataSource];
}

- (void)setupUI {
    
    [self.tableView registerNib:[UINib nibWithNibName:@"HSDemoTableViewCell" bundle:nil] forCellReuseIdentifier:CELL_ID];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HSDemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    
    [cell loadCellWithName:[self.viewModel nameFromModelNum:indexPath.row] 
                       age:[self.viewModel ageFromModelNum:indexPath.row] 
                    height:[self.viewModel heightFromModelNum:indexPath.row]];
        
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
