//
//  LoginViewPresenterTests.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LoginViewPresenter.h"
#import "LoginViewInteractor.h"
@interface LoginViewPresenterTests : XCTestCase
@property (nonatomic, strong) id <LoginViewOutputPresenterProtocol> loginViewPresenterOutputDelegate;
@end

@implementation LoginViewPresenterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    LoginViewPresenter *presenter = [LoginViewPresenter new];
    LoginViewInteractor *interactor = [LoginViewInteractor new];
    presenter.loginViewPresenterOutputInteractorDelegate = interactor;
    self.loginViewPresenterOutputDelegate = presenter;
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.loginViewPresenterOutputDelegate = nil;
    [super tearDown];
}

- (void)testloginButtonTaped {
    [self.loginViewPresenterOutputDelegate loginButtonTaped:@"caoyuan" pwd:@"123" callBackBlock:^(NSString *resutlString) {
        XCTAssertTrue([@"Login Success!" isEqualToString:resutlString], @"resultString should be Login Success!");
    }];
}

- (void)testRegistButtonTaped {
    [self.loginViewPresenterOutputDelegate registerButtonTaped:@"" pwd:@"" callBackBlock:^(NSString *resutlString) {
        XCTAssertTrue([@"Register Fail!" isEqualToString:resutlString], @"resultString should be Register Fail!");
    }];
}
@end
