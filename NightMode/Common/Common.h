//
//  Common.h
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//
#ifndef nightModelDemo_NotificationMacro_h
#define nightModelDemo_NotificationMacro_h

#define kLightDayModelNotification @"LightDayModelNotification"
#define kNightDayModelNotification @"NightDayModelNotification"


#define kDayModelNotification @"kDayModelNotification"

#endif



#ifndef nightModelDemo_ColorMacro_h
#define nightModelDemo_ColorMacro_h

#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/) \
[UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]

// 所有夜间模式颜色都应放到这里,方便后期维护与更改!! 不要偷懒哦
#define kLabelNightColor [UIColor whiteColor]
#define kLabelLightColor [UIColor blackColor]

#define kBackgroundViewNightColor [UIColor blackColor]
#define kBackgroundViewLightColor [UIColor whiteColor]

#define kButtonTitleNightColor [UIColor whiteColor]
#define kButtonTitleLightColor [UIColor blueColor]


#endif

//自动切换黑白夜
#define SETTINGS_TIME_MODE       @"ui_time_mode"


#import "GlobalManager.h"

#import "NSObject+GetHour.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Common : NSObject

@property (nonatomic, assign) BOOL isNight;

+ (Common *)sharedInstance;

- (void)saveAccountInfoToDisk;

- (void)loadAccountInfoFromDisk;



+ (void)setLabelColorWithLabel:(UILabel *)label;

+ (void)setBackgroundColorWithView:(UIView *)view;

+ (void)setBackgroundColorWithTableView:(UITableView *)tableView ;

+ (void)setButtonTitleColorWithButton:(UIButton *)button;



@end
