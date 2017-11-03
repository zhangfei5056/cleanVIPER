//
//  Router.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "Router.h"

@implementation Router

+ (void)pushTo:(UIViewController *)vc {
    [[UIApplication sharedApplication].keyWindow.rootViewController.navigationController pushViewController:vc animated:YES];
}

+ (void)pop {
    [[UIApplication sharedApplication].keyWindow.rootViewController.navigationController popViewControllerAnimated:YES];
}

@end
