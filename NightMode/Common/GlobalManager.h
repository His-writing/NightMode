//
//  GlobalManager.h
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Common.h"
@interface GlobalManager : NSObject
#ifdef __cplusplus
extern "C"
{
#endif
    
 
    NSInteger dayNightSettings();
    
    
#ifdef __cplusplus
}
#endif
@end
