//
//  LoginViewBuilder.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "LoginViewBuilder.h"
#import "LoginViewPresenter.h"
#import "LoginViewInteractor.h"

@implementation LoginViewBuilder


- (UIView *)buildView {
    
    LoginViewPresenter *presenter = [LoginViewPresenter new];
    LoginViewInteractor *interactor = [LoginViewInteractor new];
    presenter.loginViewPresenterOutputInteractorDelegate = interactor;
    
    UIView *loginView = [[NSClassFromString(@"LoginView") alloc] init];
    [loginView setValue:presenter forKey:@"loginViewOutputPresenterDelegate"];
    [loginView setValue:[NSValue valueWithCGRect:CGRectMake(0, 80, 375, 375)] forKey:@"frame"];
    return loginView;
}
@end
