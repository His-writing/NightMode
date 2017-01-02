//
//  Common.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "Common.h"

@implementation Common
#pragma mark - 私有方法
- (void)setIsNight:(BOOL)isNight {
    _isNight = isNight;
    
    if (isNight) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kNightDayModelNotification object:nil];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:kLightDayModelNotification object:nil];
    }
}

#pragma marl - 公共方法
+ (Common *)sharedInstance {
    static Common *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Common alloc] init];
        [sharedInstance loadAccountInfoFromDisk];
    });
    
    return sharedInstance;
}

- (void)saveAccountInfoToDisk {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSString  *isNigthStr;
    if (self.isNight) {
        isNigthStr = @"yes";
    } else {
        isNigthStr = @"no";
    }
    [ud setObject:isNigthStr forKey:@"isNight"];
    
    [ud synchronize];
    
}

- (void)loadAccountInfoFromDisk {
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSString  *isNigthStr = [ud objectForKey:@"isNight"];
    self.isNight = [isNigthStr isEqualToString:@"yes"];
    
}



+ (void)setLabelColorWithLabel:(UILabel *)label {
    
    if ([Common sharedInstance].isNight) {
        label.textColor = kLabelNightColor;
    } else {
        label.textColor = kLabelLightColor;
    }
    
}

+ (void)setBackgroundColorWithView:(UIView *)view {
    if ([Common sharedInstance].isNight) {
        view.backgroundColor = kBackgroundViewNightColor;
    } else {
        view.backgroundColor = kBackgroundViewLightColor;
    }
}


+ (void)setBackgroundColorWithTableView:(UITableView *)tableView {
    if ([Common sharedInstance].isNight) {
        tableView.backgroundColor = kBackgroundViewNightColor;
    } else {
        tableView.backgroundColor = kBackgroundViewLightColor;
    }
}


+ (void)setButtonTitleColorWithButton:(UIButton *)button {
    if ([Common sharedInstance].isNight) {
        [button setTitleColor:kButtonTitleNightColor forState:UIControlStateNormal];
    } else {
        [button setTitleColor:kButtonTitleLightColor forState:UIControlStateNormal];
    }
}





@end
