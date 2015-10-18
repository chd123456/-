//
//  CHDLocalViewController.m
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import "CHDLocalViewController.h"

@interface CHDLocalViewController ()

@end

@implementation CHDLocalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageView.image = [UIImage imageNamed:@"bg_h.jpg"];
    imageView.userInteractionEnabled = YES;
    self.view = imageView;
//
//    
//    UITableView *view = [[UITableView alloc]initWithFrame:CGRectMake(0, self.view.frame.origin.y / 8.0f, self.view.frame.size.width, self.view.frame.size.height / 16.0f * 14.9f) style:UITableViewStylePlain];
//    view.contentSize = CGSizeMake(1000, 1000);
//   // view.userInteractionEnabled = YES;
//    view.bounces = YES;
//    view.scrollEnabled = YES;
//    view.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:view];
}

-(void)setup{
    
    
}


@end
