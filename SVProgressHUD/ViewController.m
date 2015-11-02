//
//  ViewController.m
//  SVProgressHUD
//
//  Created by xalo on 15/10/31.
//  Copyright © 2015年 蓝鸥科技. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"
@interface ViewController ()

@end

@implementation ViewController
/*!
 * @author Vic_Li, 15-10-31 10:10:55
 *
 * enum {
 //    允许用户进行其他界面操作
 SVProgressHUDMaskTypeNone = 1, // allow user interactions while HUD is displayed
 //    不允许用户进行其他界面操作
 SVProgressHUDMaskTypeClear, // don't allow
 
 SVProgressHUDMaskTypeBlack, // don't allow and dim the UI in the back of the HUD
 SVProgressHUDMaskTypeGradient // don't allow and dim the UI with a a-la-alert-view bg gradient
 };
 
 typedef NSUInteger SVProgressHUDMaskType;
 
 @interface SVProgressHUD : UIView
 //展示提示框
 + (void)show;
 + (void)showWithStatus:(NSString*)status;
 + (void)showWithStatus:(NSString*)status maskType:(SVProgressHUDMaskType)maskType;
 + (void)showWithMaskType:(SVProgressHUDMaskType)maskType;
 
 + (void)showSuccessWithStatus:(NSString*)string;
 + (void)showSuccessWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
 + (void)showErrorWithStatus:(NSString *)string;
 + (void)showErrorWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
 //改变当前正在展示的提示框文字
 + (void)setStatus:(NSString*)string; // change the HUD loading status while it's showing
 //关闭当前提示
 + (void)dismiss; // simply dismiss the HUD with a fade+scale out animation
 + (void)dismissWithSuccess:(NSString*)successString; // also displays the success icon image
 + (void)dismissWithSuccess:(NSString*)successString afterDelay:(NSTimeInterval)seconds;
 + (void)dismissWithError:(NSString*)errorString; // also displays the error icon image
 + (void)dismissWithError:(NSString*)errorString afterDelay:(NSTimeInterval)seconds;
 
 + (BOOL)isVisible;

 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    button.center = self.view.center;
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"菊花" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(wait:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)wait:(UIButton *)sender{
//    SVProgressHUD *svp = [[SVProgressHUD alloc]init];//初始化一个svp
//    //设置svp样式
//    svp.accessibilityNavigationStyle
//    + (void)show;
//    + (void)showWithStatus:(NSString*)status;
//    + (void)showWithStatus:(NSString*)status maskType:(SVProgressHUDMaskType)maskType;
//    + (void)showWithMaskType:(SVProgressHUDMaskType)maskType;
//    
//    + (void)showSuccessWithStatus:(NSString*)string;
//    + (void)showSuccessWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
//    + (void)showErrorWithStatus:(NSString *)string;
//    + (void)showErrorWithStatus:(NSString *)string duration:(NSTimeInterval)duration;
    //设置svp样式
    [SVProgressHUD showWithStatus:@"请等待" maskType:SVProgressHUDMaskTypeNone];
//设置成功的样式
//    [SVProgressHUD showSuccessWithStatus:@"完成"];
    NSDate * now = [NSDate date];
    NSDate * anHourAgo = [now dateByAddingTimeInterval:-1*1];
    NSTimeInterval timeBetween = [now timeIntervalSinceDate:anHourAgo];
    [SVProgressHUD showSuccessWithStatus:@"这是什么鬼" duration:timeBetween];
    //设置错误的样式
//    [SVProgressHUD showErrorWithStatus:@"失败"];
//    [SVProgressHUD showErrorWithStatus:@"失败的复杂样式" duration:timeBetween];
//    //改变当前正在展示的提示框文字
//    + (void)setStatus:(NSString*)string; // change the HUD loading status while it's showing
    [SVProgressHUD setStatus:@"改变当前正在展示的提示框文字"];
//    //关闭当前提示
//    + (void)dismiss; // simply dismiss the HUD with a fade+scale out animation
//    [SVProgressHUD dismiss];
//    + (void)dismissWithSuccess:(NSString*)successString; // also displays the success icon image
    
//    + (void)dismissWithSuccess:(NSString*)successString afterDelay:(NSTimeInterval)seconds;
//    + (void)dismissWithError:(NSString*)errorString; // also displays the error icon image
//    + (void)dismissWithError:(NSString*)errorString afterDelay:(NSTimeInterval)seconds;
//    
//    + (BOOL)isVisible;
//    [SVProgressHUD isVisible];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
