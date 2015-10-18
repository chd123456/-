//
//  UIImage+Extension.m
//  日记本
//
//  Created by 崔海达 on 15/10/17.
//  Copyright © 2015年 hida. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

// 缩放UIImage到指定大小
+(UIImage *)imageResize: (UIImage *)image width:(CGFloat)width height:(CGFloat) height {
    
    UIGraphicsBeginImageContext(CGSizeMake(width, height));
    [image drawInRect:CGRectMake (0.0f,0.0f,width,height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

// 调用UIImage工具类转换为适合TabIcon大小
+(UIImage *)imageToTabIcon:(UIImage *)iconImage{
    return [UIImage imageResize:iconImage width:25.0f height:25.0f];
}

+(UIImage *)imageToNavIcon:(UIImage *)iconImage
{
    return [UIImage imageResize:iconImage width:35.0f height:35.0f];
}

@end
