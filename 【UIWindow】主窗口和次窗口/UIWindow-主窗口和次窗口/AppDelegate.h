//
//  AppDelegate.h
//  UIWindow-主窗口和次窗口
//
//  Created by 蓝田 on 16/8/18.
//  Copyright © 2016年 Loto. All rights reserved.
//

#import <UIKit/UIKit.h>

// UIWindow的属性定义为strong，是为了让其不销毁
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property(strong, nonatomic) UIWindow *window1; // 窗口1
@property(strong, nonatomic) UIWindow *window2; // 窗口2
@end
