//
//  LoginViewBuilderTests.m
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LoginViewBuilder.h"
#import "LoginViewBuilderProtocol.h"
@interface LoginViewBuilderTests : XCTestCase

@end

@implementation LoginViewBuilderTests

- (void)testBuildView {
    id <LoginViewBuilderProtocol> delegate = [[LoginViewBuilder alloc] init];
    XCTAssertNil([delegate buildView], "should be nil");
    delegate = nil;
}

@end
