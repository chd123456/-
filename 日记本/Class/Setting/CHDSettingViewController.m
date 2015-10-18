//
//  CHDSettingViewController.m
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import "CHDSettingViewController.h"

@interface CHDSettingViewController ()

@end

@implementation CHDSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"bg_h.jpg"];
    imageView.userInteractionEnabled = YES;
    self.view = imageView;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
