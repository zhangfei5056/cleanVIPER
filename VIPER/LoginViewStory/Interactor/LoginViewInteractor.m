//
//  LoginViewInteractor.m
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "LoginViewInteractor.h"

@implementation LoginViewInteractor

- (void)loginWith:(NSString *)idStr pwd:(NSString *)pwdStr callback:(void (^)(BOOL))blockCallBack {
    if ([idStr isEqualToString:@"caoyuan"] && [pwdStr isEqualToString:@"123"]) {
        blockCallBack(YES);
    }else {
        blockCallBack(NO);
    }
}



- (void)registerWith:(NSString *)idStr pwd:(NSString *)pwdStr callback:(void (^)(BOOL))blockCallBack {
    // DO some save or request...
    blockCallBack(NO);
}

@end
