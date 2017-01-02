//
//  RootViewController.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if ([Common sharedInstance].isNight) {
        [self setNightDayModel];
    } else {
        [self setLightDayModel];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setLightDayModel) name:kLightDayModelNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setNightDayModel) name:kNightDayModelNotification object:nil];
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(setDayModel)
                                                name:kDayModelNotification
                                              object:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setDayModel:(NSNotification *)notification{

    if ([[NSString stringWithFormat:@"%@",notification.object]isEqualToString:@"白天"]) {
    
        NSLog(@"白天");
        
    }else{
        NSLog(@"黑天");

    
    }
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)setLightDayModel {
    NSLog(@"-------设置白天模式");
}

- (void)setNightDayModel {
    NSLog(@"-------设置夜晚模式");
}



-(void)setDayModel{


}

- (void)dealloc {
    
    // 必须在dealloc方法中移除观察
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
