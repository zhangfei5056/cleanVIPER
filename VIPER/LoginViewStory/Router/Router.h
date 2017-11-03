//
//  Router.h
//  VIPER
//
//  Created by Cao, Yuan (Agoda) on 11/3/17.
//  Copyright © 2017 feizhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Router : NSObject

+ (void)pushTo:(UIViewController *)vc;
+ (void)pop;

@end
