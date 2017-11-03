//
//  RootViewController.m
//  CleanArchitecture
//
//  Created by Cao, Yuan (Agoda) on 11/2/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import "RootViewController.h"
#import "RootViewControllerLoginViewSDKWrapper.h"
@interface RootViewController ()
@property (nonatomic, strong) id <RootViewControllerLoginViewSDKProtocol> delegate;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = [[RootViewControllerLoginViewSDKWrapper alloc] init];
    [self.delegate addLoginViewToRootViewController:self];
}




@end
