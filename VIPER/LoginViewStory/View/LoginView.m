//
//  LoginView.m
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "LoginView.h"
@implementation LoginView


- (instancetype)init
{
    return [[[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:nil options:nil] lastObject];
}


- (IBAction)loginButtonAction:(id)sender {
    if (_loginViewOutputPresenterDelegate && [_loginViewOutputPresenterDelegate respondsToSelector:@selector(loginButtonTaped:pwd:callBackBlock:)]) {
        [_loginViewOutputPresenterDelegate loginButtonTaped:self.idTextField.text pwd:self.pwdTextField.text callBackBlock:^(NSString *resutlString) {
            self.resultLabel.text = resutlString;
        }];
    }
}

- (IBAction)registerButtonAction:(id)sender {
    if (_loginViewOutputPresenterDelegate && [_loginViewOutputPresenterDelegate respondsToSelector:@selector(registerButtonTaped:pwd:callBackBlock:)]) {
        [_loginViewOutputPresenterDelegate registerButtonTaped:self.idTextField.text pwd:self.pwdTextField.text callBackBlock:^(NSString *resutlString) {
            self.resultLabel.text = resutlString;
        }];
    }
}


@end
