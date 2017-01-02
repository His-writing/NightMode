//
//  NSObject+GetHour.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "NSObject+GetHour.h"
#import "Common.h"

@implementation NSObject (GetHour)

+(BOOL)getTimeNow{
    //当前的时间
    NSDate *now = [NSDate date];
    //分配内存，用以存放日期格式
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    // 里面的HH  是24小时，而hh 是12进制的
    [formatter setDateFormat:@"HH"];
    //-将now按formatter格式转成nsstring
    NSString *hour = [formatter stringFromDate:now];
    
    
    //小于早晨六点  大于等于晚上八点
    if([hour longLongValue]<6||[hour longLongValue] >= 20){
        
        [[NSNotificationCenter defaultCenter] postNotificationName:kDayModelNotification object:@"白天"];
        
        //白天
        return NO;
    }else {
        
        
        [[NSNotificationCenter defaultCenter] postNotificationName:kDayModelNotification object:@"黑夜"];
        
        //黑夜
        return YES;
    }
    //自动切换夜间模式
    //    [[NSNotificationCenter defaultCenter]postNotificationName:kDayModelNotification object:nil];
    
    
    
}


@end
