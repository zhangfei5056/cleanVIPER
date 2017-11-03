//
//  LoginViewPresenterOutputInteractor.h
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol LoginViewPresenterOutputInteractor <NSObject>

- (void)loginWith:(NSString *)idStr pwd:(NSString *)pwdStr callback:(void (^)(BOOL isSuccess))blockCallBack;
- (void)registerWith:(NSString *)idStr pwd:(NSString *)pwdStr callback:(void (^)(BOOL isSuccess))blockCallBack;

@end
