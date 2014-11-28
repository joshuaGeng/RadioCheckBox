//
//  ViewController.m
//  RadioCheckBox
//
//  Created by GengZhongFei on 14/11/28.
//  Copyright (c) 2014年 耿中飞. All rights reserved.
//

#import "ViewController.h"
#import "GZFRadioCheckBox.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // 横向显示
    GZFRadioCheckBox *radioCheckBox = [[GZFRadioCheckBox alloc] initWithFrame:CGRectMake(20, 50, 320, 22)];
    radioCheckBox.isHorizontal = YES; //默认
    radioCheckBox.spacing = 50; //默认 10
    radioCheckBox.index = 0; // 默认 0
    radioCheckBox.showTextColor = [UIColor redColor];
    radioCheckBox.showTextFont = [UIFont systemFontOfSize:14];
    // 可选项，需保持和showTextArray 一致
    radioCheckBox.hideTextArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4", nil];
    radioCheckBox.showTextArray = [NSArray arrayWithObjects:@"radio1",@"radio2",@"radio3",@"radio4", nil];
    [radioCheckBox radioCheckBoxClick:^(NSUInteger index, NSString *showText, NSString *hideText) {
        
        NSLog(@"index----->%d------>%@------>%@",index,showText,hideText);
    }];
    
    [self.view addSubview:radioCheckBox];
    
    // 纵向显示
    
    GZFRadioCheckBox *radioCheckBox2 = [[GZFRadioCheckBox alloc] initWithFrame:CGRectMake(20, 120, 22, 222)];
    radioCheckBox2.isHorizontal = NO; //默认
    radioCheckBox2.spacing = 20; //默认 10
    radioCheckBox2.index = 1;
    // 可选项，需保持和showTextArray 一致
    radioCheckBox2.hideTextArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4", nil];
    radioCheckBox2.showTextArray = [NSArray arrayWithObjects:@"radio11",@"radio22",@"radio33",@"radio44", nil];
    [radioCheckBox2 radioCheckBoxClick:^(NSUInteger index, NSString *showText, NSString *hideText) {
        
        NSLog(@"index----->%d------>%@------>%@",index,showText,hideText);
    }];
    
    [self.view addSubview:radioCheckBox2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
