//
//  UIImage+Extension.h
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
+(UIImage *)imageResize: (UIImage *)image width:(CGFloat)width height:(CGFloat) height ;
+(UIImage *)imageToTabIcon:(UIImage *)iconImage ;
+(UIImage *)imageToNavIcon:(UIImage *)iconImage ;

@end
