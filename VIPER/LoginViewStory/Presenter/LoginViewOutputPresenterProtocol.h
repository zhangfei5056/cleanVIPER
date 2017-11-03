//
//  LoginViewInputPresenterProtocol.h
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewOutputPresenterProtocol <NSObject>
- (void)loginButtonTaped:(NSString *)idStr pwd:(NSString *)pwdStr callBackBlock:(void(^)(NSString *resutlString))callback;
- (void)registerButtonTaped:(NSString *)idStr pwd:(NSString *)pwdStr callBackBlock:(void(^)(NSString *resutlString))callback;
@end
