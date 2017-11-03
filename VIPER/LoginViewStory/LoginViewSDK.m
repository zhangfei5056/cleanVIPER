//
//  LoginViewSDK.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "LoginViewSDK.h"
#import "LoginViewBuilderProtocol.h"
#import "LoginViewBuilder.h"


@implementation LoginViewSDK

+ (UIView *)loginView {
    id <LoginViewBuilderProtocol> delegate = [[LoginViewBuilder alloc] init];
    return [delegate buildView];
}

@end
