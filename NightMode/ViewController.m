//
//  ViewController.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "firstViewController.h"

#import "secondViewController.h"
#import "Common.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if([[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] valueForKey:@"timeMode"]] isEqualToString:@"zidong"]){
    
    
        
        self.modeTimeLable.text=@"自动模式";
    }else{
    
        //如果取不到值 存索引
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
    
    
        if ([[NSString stringWithFormat:@"%@",[defaults valueForKey:SETTINGS_TIME_MODE]]isEqualToString:@"0"]) {
            self.modeTimeLable.text=@"黑夜";

            
        }else{
            
            self.modeTimeLable.text=@"白天";

        
        }
    
    }
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)nightModeClick:(UISwitch *)sender {
    
    
    if (sender.on) {
        self.view.window.backgroundColor = [UIColor blackColor];
        self.view.window.alpha = 0.5;//透明度
    }else{
        self.view.window.backgroundColor = [UIColor whiteColor];
        self.view.window.alpha = 1.0;
        
    }

    
    
}

- (IBAction)NightMode:(UISwitch *)sender {
    
    [Common sharedInstance].isNight = ![Common sharedInstance].isNight;
}





#pragma mark - 夜间模式
- (void)setNightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [Common setBackgroundColorWithView:self.view];
    
    [Common setButtonTitleColorWithButton:self.firstButton];

    [Common setButtonTitleColorWithButton:self.secondButton];

    // 个别特殊单独设置
}

- (void)setLightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [Common setBackgroundColorWithView:self.view];
    [Common setButtonTitleColorWithButton:self.firstButton];
    [Common setButtonTitleColorWithButton:self.secondButton];

    
    // 个别特殊单独设置
}




- (IBAction)firstClick:(id)sender {
    
    firstViewController * firstVC = [[firstViewController alloc]init];
    [self.navigationController pushViewController:firstVC animated:YES];


}

- (IBAction)secondClick:(id)sender {
    
    secondViewController * secondVC = [[secondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];

    
}

-(void)setDay:(UIButton*)button{

    int dayType=0;
    
    [[NSUserDefaults standardUserDefaults] setValue:@"" forKey:@"timeMode"];

    switch (button.tag) {
        case 0:
            
            dayType=0;
            NSLog(@"黑");
            
            self.modeTimeLable.text=@"黑夜";

            break;
            
        case 1:
            dayType=1;

            NSLog(@"白");
            
            self.modeTimeLable.text=@"白天";

            break;
            
        case 2:
            dayType=2;

            
            self.modeTimeLable.text=@"自动";

            NSLog(@"自动");
            
            if (![NSObject getTimeNow]) {
                dayType=1;
                
            }else{
                dayType=0;
            }
            //存自动
            [[NSUserDefaults standardUserDefaults] setValue:@"zidong" forKey:@"timeMode"];
            break;
            
        default:
            break;
    }

    [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%d",dayType] forKey:SETTINGS_TIME_MODE];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kDayModelNotification object:nil];
    

}

- (IBAction)whiteClick:(UIButton*)sender {
    
    
    sender.tag=1;
    [self  setDay:sender ];

    
    
}
- (IBAction)blackClick:(UIButton *)sender {
    
    
    sender.tag=0;
    [self  setDay:sender ];
}

- (IBAction)automaticClick:(UIButton *)sender {
    
    sender.tag=2;
    [self  setDay:sender ];


}

- (void)setDayModel:(NSNotification *)notification{


        self.daySetType = dayNightSettings();
    
    
    switch (self.daySetType) {
        case 0:
            NSLog(@"黑--------");
            break;
        
        case 1:
            NSLog(@"白--------");
            break;
            
        case 2:
            NSLog(@"自动-------");
            break;
            
        default:
            break;
    }
    
    

}

@end
