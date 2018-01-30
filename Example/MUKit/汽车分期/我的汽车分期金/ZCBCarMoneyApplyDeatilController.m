//
//  ZCBCarMoneyApplyDeatilController.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyApplyDeatilController.h"
#import "ZCBCarMoneyApplyDeatilHeaderView.h"
//#import "wxx_web_ViewController.h"


@interface ZCBCarMoneyApplyDeatilController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonHeightConstraint;

@property (weak, nonatomic) IBOutlet UIButton *button;
@property(nonatomic, strong)ZCBCarMoneyApplyDeatilHeaderView *headerView;
@end

@implementation ZCBCarMoneyApplyDeatilController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeBottom;
//    [self TTTitle:@"装修金申请详情" textColor:[UIColor whiteColor] isShimmering:NO];
//    self.headerView = [ZCBCarMoneyApplyDeatilHeaderView ViewFromXib];
//    self.headerView.AutoWidth = hScreenWidth;
    self.tableView.tableHeaderView = self.headerView;
//    self.tableView.backgroundColor = TTGrayColor(245);
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//    if ([self.model.schedule_sataus integerValue ] == 1 || [self.model.schedule_sataus integerValue ] == 0) {
//        [self.button setTitle:@"查看合同" forState:UIControlStateNormal];
//    }
//
//    if ([self.model.schedule_sataus integerValue ] == 2){
//        self.button.hidden = NO;
//        self.buttonHeightConstraint.constant = 49.;
//    }else if ([self.model.schedule_sataus integerValue ] == 1){
//        self.button.hidden = NO;
//        self.buttonHeightConstraint.constant = 49.;
//    }else if ([self.model.schedule_sataus integerValue ] == 0){
//        self.button.hidden = NO;
//        self.buttonHeightConstraint.constant = 49.;
//    }else{
//        self.button.hidden = YES;
//        self.buttonHeightConstraint.constant = 0;
//    }
//
//    [self getData];
}
/*
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
     [self TTNVDefaultBarWithImg:[UIImage imageWithColor:TTZCBIconRed] bindScrollView:self.tableView];
}
Click_signal(button){
    
    if ([self.model.schedule_sataus integerValue ] == 1 || [self.model.schedule_sataus integerValue ] == 0) {
        
        wxx_web_ViewController *controller = [wxx_web_ViewController new];
        controller.url_Link = self.headerView.model.contract_url;
        [self.navigationController WillPushViewController:@"wxx_web_ViewController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
            
            [dict addEntriesFromDictionary:@{@"url_Link":self.headerView.model.contract_url ,@"backIconName":@"nav_back03"}];
        } callback:nil jumpError:nil];
    }else{
        [self.navigationController WillPushViewController:@"ZCBCarRealEstateInfomationController" animated:YES SetupParms:^(UIViewController *vc, NSMutableDictionary *dict) {
            
        } callback:nil jumpError:nil];
    }
}
-(void)getData{
    [BSSCModel POSTResultWithPath:@"m=Api&c=Consumer&a=myapplyInfo" Params:^(BSSCParms *ParmsModel) {
        
        ParmsModel.id = self.model.id;
        ParmsModel.schedule_sataus = self.model.schedule_sataus;
    } success:^(BSSCModel *model, NSMutableArray<BSSCModel *> *modelArr, id responseObject) {
        
        self.headerView.schedule_sataus = [self.model.schedule_sataus integerValue];
        self.headerView.model = model;
        [self.tableView reloadData];
        
    } failure:^(NSError *error) {
        
    }];
}
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
