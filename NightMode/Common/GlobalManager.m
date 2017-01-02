//
//  GlobalManager.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "GlobalManager.h"

NSInteger dayNightSettings(){
    NSInteger daySettings = 0;
    if([[[NSUserDefaults standardUserDefaults] valueForKey:@"timeMode"] isEqualToString:@"zidong"]){
        if (![NSObject getTimeNow]) {
            daySettings = 1;
        }
        [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%ld",(long)daySettings] forKey:SETTINGS_TIME_MODE];
    }
    if ([[NSUserDefaults standardUserDefaults] valueForKey:SETTINGS_TIME_MODE]) {
        daySettings = [[[NSUserDefaults standardUserDefaults] valueForKey:SETTINGS_TIME_MODE] intValue];
    }
    return daySettings;
}

@implementation GlobalManager

@end
