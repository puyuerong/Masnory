//
//  ViewController.m
//  MasonryTest
//
//  Created by 蒲悦蓉 on 2019/9/12.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "SearchPageViewController.h"
@interface ViewController ()
@property UITextField *searchTextFiled;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"roy1.JPG"]];
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.and.height.equalTo(@100);
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        make.width.and.height.equalTo(@100);
    }];
    _searchTextFiled = [[UITextField alloc] init];
    _searchTextFiled.placeholder = @"输入王源";
    _searchTextFiled.textAlignment = NSTextAlignmentCenter;
    _searchTextFiled.layer.cornerRadius = 10;
    _searchTextFiled.layer.borderWidth = 1;
    _searchTextFiled.layer.borderColor = [UIColor blackColor].CGColor;
    _searchTextFiled.delegate = self;
    [self.view addSubview: _searchTextFiled];
    [_searchTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).with.offset(20);
        make.top.equalTo(self.view).with.offset(50);
        make.right.equalTo(self.view).with.offset(-20);
        make.height.equalTo(@50);
    }];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_searchTextFiled resignFirstResponder];
    if ([_searchTextFiled.text isEqualToString:@"王源"]) {
        SearchPageViewController *searchVC = [[SearchPageViewController alloc] init];
        [self presentViewController:searchVC animated:YES completion:nil];
    }
    return YES;
}


@end
