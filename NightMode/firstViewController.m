//
//  firstViewController.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "firstViewController.h"
#import "secondViewController.h"


@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 夜间模式
- (void)setNightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [Common setBackgroundColorWithView:self.view];
    [Common setButtonTitleColorWithButton:self.pushButton];

    
    // 个别特殊单独设置
}

- (void)setLightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [Common setBackgroundColorWithView:self.view];
    [Common setButtonTitleColorWithButton:self.pushButton];

    
    // 个别特殊单独设置
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)firstClick:(id)sender {
    
    secondViewController * secondVC = [[secondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];

}
@end
