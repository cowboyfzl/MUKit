//
//  ZCBCarMoneyController.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyController.h"
#import "ZCBCarMoneyHeaderView.h"

@interface ZCBCarMoneyController ()

@property(nonatomic, strong)ZCBCarMoneyHeaderView *headerView;
@end

@implementation ZCBCarMoneyController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self TTTitle:@"我的装修金" textColor:[UIColor whiteColor] isShimmering:NO];
//    self.headerView = [ZCBCarMoneyHeaderView ViewFromXib];
//    self.headerView.AutoWidth = hScreenWidth;
    self.tableView.tableHeaderView = self.headerView;
//    self.tableView.backgroundColor = TTGrayColor(245);
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.edgesForExtendedLayout = UIRectEdgeBottom;
//    [self TTRightBarTitle:@"明细" textColor:[UIColor whiteColor]];
}
/*
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    White_StatusBar;
    [self TTNVDefaultBarWithImg:[UIImage imageWithColor:TTZCBIconRed] bindScrollView:self.tableView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
TTRightClick{
    [self.navigationController WillPushViewController:@"ZCBCarMoneyDetailController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
        
    } callback:nil jumpError:nil];
}
Click_signal(decorationView){
    [self.navigationController WillPushViewController:@"ZCBCarMoneyApplyController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
        
    } callback:nil jumpError:nil];
}
Click_signal(installmentView){
    [self.navigationController WillPushViewController:@"ZCBCarMoneyInstallmentController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
        
    } callback:nil jumpError:nil];
}
 */
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
