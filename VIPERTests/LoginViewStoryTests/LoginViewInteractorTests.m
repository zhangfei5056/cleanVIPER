//
//  LoginViewInteractorTests.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LoginViewInteractor.h"
@interface LoginViewInteractorTests : XCTestCase
@property (nonatomic, strong) id <LoginViewPresenterOutputInteractor> loginViewPresenterOutputInteractorDelegate;
@end

@implementation LoginViewInteractorTests

- (void)setUp {
    [super setUp];
    self.loginViewPresenterOutputInteractorDelegate = [[LoginViewInteractor alloc] init];
    
}

- (void)tearDown {
    self.loginViewPresenterOutputInteractorDelegate = nil;
    [super tearDown];
}

- (void)testloginSuccess {
    [self.loginViewPresenterOutputInteractorDelegate loginWith:@"caoyuan" pwd:@"123" callback:^(BOOL isSuccess) {
        XCTAssertTrue(isSuccess, @"isSuccess should be YES");
    }];
}

- (void)testLoginFailed {
    [self.loginViewPresenterOutputInteractorDelegate loginWith:@"caoyuan222" pwd:@"123" callback:^(BOOL isSuccess) {
        XCTAssertTrue(!isSuccess, @"isSuccess should be NO");
    }];
}



- (void)testRegister {
    [self.loginViewPresenterOutputInteractorDelegate registerWith:@"xxx" pwd:@"xxx" callback:^(BOOL isSuccess) {
         XCTAssertTrue(!isSuccess, @"isSuccess should be NO");
    }];
}








@end
