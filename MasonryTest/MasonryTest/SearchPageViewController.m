//
//  SearchPageViewController.m
//  MasonryTest
//
//  Created by 蒲悦蓉 on 2019/9/14.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "SearchPageViewController.h"
#import "Masonry.h"
@interface SearchPageViewController ()
@property NSMutableArray *array;
@end

@implementation SearchPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.layer.cornerRadius = 5;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(50);
        make.width.equalTo(@50);
        make.height.equalTo(@30);
    }];
    _array = [[NSMutableArray alloc] initWithObjects:@"微风在轻轻的吹着", @"渡船也缓缓的晃着", @"我幼时的梦啊", @"像细碎的画雨滴", @"在降落", @"小小的火车在走着", @"无声的汽笛低语着", @"说着怎么了", @"怎么你好久", @"都不来看我", nil];
    UITableView *tableView = [[UITableView alloc] init];
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(100);
        make.width.equalTo(@([UIScreen mainScreen].bounds.size.width));
        make.height.equalTo(@([UIScreen mainScreen].bounds.size.height - 100));
    }];
    tableView.delegate = self;
    tableView.dataSource = self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = _array[indexPath.row];
    return cell;
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
