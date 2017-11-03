//
//  LoginView.h
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewOutputPresenterProtocol.h"
@interface LoginView : UIView

@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (nonatomic, strong) id <LoginViewOutputPresenterProtocol> loginViewOutputPresenterDelegate;

@end
