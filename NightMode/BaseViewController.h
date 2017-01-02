//
//  RootViewController.h
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface BaseViewController : UIViewController
/**
 *  设置白天模式(公共接口)
 */
- (void)setLightDayModel;

/**
 *  设置夜间模式(公共接口)
 */
- (void)setNightDayModel;



@property(nonatomic, assign) NSInteger daySetType;

@end
