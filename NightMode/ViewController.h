//
//  ViewController.h
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "BaseViewController.h"

@interface ViewController : BaseViewController


- (IBAction)nightModeClick:(UISwitch *)sender;


- (IBAction)NightMode:(UISwitch *)sender;



- (IBAction)firstClick:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *firstButton;


- (IBAction)secondClick:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *secondButton;


@property (weak, nonatomic) IBOutlet UIButton *whiteButton;
//- (IBAction)whiteClick:(id)sender;



@property (weak, nonatomic) IBOutlet UIButton *blackButton;
//- (IBAction)blackClick:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *automaticButton;
//- (IBAction)automaticClick:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *modeTimeLable;

- (IBAction)whiteClick:(UIButton*)sender;
- (IBAction)blackClick:(UIButton *)sender;
- (IBAction)automaticClick:(UIButton *)sender;


@end

