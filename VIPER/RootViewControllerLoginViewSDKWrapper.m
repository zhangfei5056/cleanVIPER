//
//  RootViewControllerLoginViewSDKWrapper.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "RootViewControllerLoginViewSDKWrapper.h"
#import "LoginViewSDK.h"
@implementation RootViewControllerLoginViewSDKWrapper

- (void)addLoginViewToRootViewController:(UIViewController *)rootVC {
    [rootVC.view addSubview:[LoginViewSDK loginView]];
}


@end
