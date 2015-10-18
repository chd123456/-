//
//  CHDTabBarViewController.m
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import "CHDTabBarViewController.h"
#import "CHDLocalViewController.h"
#import "CHDSettingViewController.h"
//#import "HWDiscoverViewController.h"
//#import "HWProfileViewController.h"
#import "CHDNavigationController.h"
#import "CHDTabBar.h"
#import "UIImage+Extension.h"
@interface CHDTabBarViewController () <UITabBarDelegate>

@end

@implementation CHDTabBarViewController

-(instancetype)init
{
    self = [super init];
    [self.tabBar setBarStyle:UIBarStyleBlack];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.初始化子控制器
    
    CHDLocalViewController *local = [[CHDLocalViewController alloc]init];
    [self addChildVc:local title:@"本地日记" image:@"0_off" selectedImage:@"0_on"];
  
    
    CHDSettingViewController *setting = [[CHDSettingViewController alloc]init];
    [self addChildVc:setting title:@"设置" image:@"1_off" selectedImage:@"1_on"];

    
    
    
 //   HWProfileViewController *profile = [[HWProfileViewController alloc] init];
 //   [self addChildVc:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    
    // 2.更换系统自带的tabbar
    CHDTabBar *tabBar = [[CHDTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
    /*
     [self setValue:tabBar forKeyPath:@"tabBar"];相当于self.tabBar = tabBar;
     [self setValue:tabBar forKeyPath:@"tabBar"];这行代码过后，tabBar的delegate就是HWTabBarViewController
     说明，不用再设置tabBar.delegate = self;
     */
    
    /*
     1.如果tabBar设置完delegate后，再执行下面代码修改delegate，就会报错
     tabBar.delegate = self;

     2.如果再次修改tabBar的delegate属性，就会报下面的错误
     错误信息：Changing the delegate of a tab bar managed by a tab bar controller is not allowed.
     错误意思：不允许修改TabBar的delegate属性(这个TabBar是被TabBarViewController所管理的)
     */
}

/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置子控制器的文字
   // childVc.title = title; // 同时设置tabbar和navigationBar的文字
    childVc.tabBarItem.title =title;
    
    
    // 设置子控制器的图片
   
    childVc.tabBarItem.image = [[UIImage imageToTabIcon:[UIImage imageNamed:image]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    childVc.tabBarItem.selectedImage = [[UIImage imageToTabIcon:[UIImage imageNamed:selectedImage]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] =[UIColor colorWithRed:255/255 green:255/255 blue:255/255 alpha:1.0f];
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    CHDNavigationController *nav = [[CHDNavigationController alloc] initWithRootViewController:childVc];
    // 添加为子控制器
    [self addChildViewController:nav];

}

#pragma mark - HWTabBarDelegate代理方法
- (void)tabBarDidClickPlusButton:(CHDTabBar *)tabBar
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
