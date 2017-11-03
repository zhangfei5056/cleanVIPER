//
//  LoginViewPresenter.m
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "LoginViewPresenter.h"

@implementation LoginViewPresenter

- (void)loginButtonTaped:(NSString *)idStr pwd:(NSString *)pwdStr callBackBlock:(void (^)(NSString *))callback {
    if (_loginViewPresenterOutputInteractorDelegate && [_loginViewPresenterOutputInteractorDelegate respondsToSelector:@selector(loginWith:pwd:callback:)]) {
        [_loginViewPresenterOutputInteractorDelegate loginWith:idStr pwd:pwdStr callback:^(BOOL isSuccess) {
            isSuccess ? callback(@"Login Success!") : callback(@"Login Fail!");
        }];
    }
}

- (void)registerButtonTaped:(NSString *)idStr pwd:(NSString *)pwdStr callBackBlock:(void (^)(NSString *))callback{
 
    if (_loginViewPresenterOutputInteractorDelegate && [_loginViewPresenterOutputInteractorDelegate respondsToSelector:@selector(registerWith:pwd:callback:)]) {
        [_loginViewPresenterOutputInteractorDelegate registerWith:idStr pwd:pwdStr callback:^(BOOL isSuccess) {
            isSuccess ? callback(@"Register Success!") : callback(@"Register Fail!");
        }];
    }
}



@end
