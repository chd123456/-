//
//  CHDTabBar.h
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHDTabBar;

#warning 因为CHDTabBar继承自UITabBar，所以称为CHDTabBar的代理，也必须实现UITabBar的代理协议
@protocol CHDTabBarDelegate <UITabBarDelegate>
@optional
- (void)tabBarDidClickPlusButton:(CHDTabBar *)tabBar;
@end

@interface CHDTabBar : UITabBar
@property (nonatomic, weak) id<CHDTabBarDelegate> delegate;
@end
