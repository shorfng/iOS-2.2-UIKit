//
//  AppDelegate.m
//  UIWindow-主窗口和次窗口
//
//  Created by 蓝田 on 16/8/18.
//  Copyright © 2016年 Loto. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#pragma mark - UIwindow1(红色)
  // 1.创建UIwindow1
  self.window1 = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window1.backgroundColor = [UIColor redColor];

  // 创建一个控制器
  UIViewController *vc = [[UIViewController alloc] init];

  // 2.把控制器的view添加到UIwindow1上
  // 方法1： addsubview（此法本案例会报错）
  //  [self.window1 addSubview:vc.view];
  // 方法2：rootViewController
  self.window1.rootViewController = vc;

  // 3.显示出来UIwindow1
  // 方法1：让UIwindow1成为keyWindow(主窗口)，并且可见
  [self.window1 makeKeyAndVisible];
  // 方法2：让UIwindow1成为keyWindow(主窗口)，默认不可见
  //  [self.window1 makeKeyWindow];

  // 给UIwindow1添加一个输入框
  UITextField *tf = [[UITextField alloc] init];
  tf.frame = CGRectMake(10, 64, 100, 20);
  tf.borderStyle = UITextBorderStyleRoundedRect;
  [self.window1 addSubview:tf];

  // 打印当前应用的主窗口，此时应用的主窗口是window
  NSLog(@"%p", [UIApplication sharedApplication].keyWindow);

#pragma mark - UIwindow2
  // 1.创建UIwindow2
  self.window2 =
      [[UIWindow alloc] initWithFrame:CGRectMake(100, 150, 200, 200)];
  self.window2.backgroundColor = [UIColor blueColor];

  // 2.把控制器的view添加到UIwindow2上
  // 方法1： addsubview（此法本案例会报错）
  //  [self.window2 addSubview:vc.view];
  // 方法2：rootViewController
  self.window2.rootViewController = vc;

  // 3.显示出来UIwindow2
  // 方法1：让UIwindow2成为keyWindow(主窗口)，并且可见
  [self.window2 makeKeyAndVisible];
  // 方法2：让UIwindow2成为keyWindow(主窗口)，默认不可见
  //  [self.window2 makeKeyWindow];

  // 给UIwindow2添加一个输入框
  UITextField *tf2 = [[UITextField alloc] init];
  tf2.frame = CGRectMake(30, 30, 70, 20);
  tf2.borderStyle = UITextBorderStyleRoundedRect;
  [self.window2 addSubview:tf2];

  // 打印当前应用的主窗口，此时window2已经成为了应用的主窗口
  NSLog(@"%p", [UIApplication sharedApplication].keyWindow);

  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down
  // OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called
  // instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
}

@end
