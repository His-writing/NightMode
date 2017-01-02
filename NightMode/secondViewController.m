//
//  secondViewController.m
//  NightMode
//
//  Created by shuzhenguo on 2016/11/1.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()<UITableViewDelegate,UITableViewDataSource>
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.a_TableView.dataSource=self;
    self.a_TableView.delegate=self;
    
    self.a_TableView.backgroundView=nil;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 5;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *CMainCell = @"CMainCell";     //  0
    
   UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CMainCell];      //   1
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier: CMainCell];    //  2
    }
    
    // Config your cell
//    cell.textLabel.text = @"XXX";    //  3
    
    [Common setBackgroundColorWithView:cell.contentView];
    
    [Common setLabelColorWithLabel:cell.textLabel];


    
//    if ([Common sharedInstance].isNight) {
//            cell.contentView.backgroundColor=[UIColor redColor];
//
//        
//    } else {
//        cell.contentView.backgroundColor=[UIColor whiteColor];
//    }
//    

    
    
//        cell.contentView.backgroundColor=[UIColor clearColor];
    

    

    cell.textLabel.text=@"jfvbjvhbvhbhv";
    return cell;

}

#pragma mark - 夜间模式
- (void)setNightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [Common setBackgroundColorWithView:self.view];

    [Common setBackgroundColorWithTableView:self.a_TableView];
    

    
    // 个别特殊单独设置
}

- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section {
    view.tintColor = [UIColor clearColor];
}


- (void)setLightDayModel {
    
    [Common setBackgroundColorWithView:self.view];

    [Common setBackgroundColorWithTableView:self.a_TableView];

    // 个别特殊单独设置

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
