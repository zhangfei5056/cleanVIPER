//
//  RootViewControllerLoginViewSDKWrapper.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "RootViewControllerLoginViewSDKWrapper.h"
@implementation RootViewControllerLoginViewSDKWrapper

- (void)addLoginViewToRootViewController:(UIViewController *)rootVC {
    Class LoginViewSDK = NSClassFromString(@"LoginViewSDK");
    UIView *view = [LoginViewSDK performSelector:NSSelectorFromString(@"loginView")];
    [rootVC.view addSubview:view];
}


@end
