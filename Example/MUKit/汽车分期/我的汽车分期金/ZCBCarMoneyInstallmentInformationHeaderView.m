//
//  ZCBCarMoneyInstallmentInformationHeaderView.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyInstallmentInformationHeaderView.h"


@interface ZCBCarMoneyInstallmentInformationHeaderView()

@property (weak, nonatomic) IBOutlet UILabel *loanMoneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *rateLable;
@property (weak, nonatomic) IBOutlet UILabel *numberLable;
@property (weak, nonatomic) IBOutlet UILabel *usedLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderNumberLabel;


@end
@implementation ZCBCarMoneyInstallmentInformationHeaderView

//-(void)setModel:(BSSCModel *)model{
//    _model = model;
//    _loanMoneyLabel.text = [NSString stringWithFormat:@"￥%@",[NSString decimalStringWithNumber:model.total_money]];
//    _numberLable.text = [NSString stringWithFormat:@"%@期",model.stage_nums];
//    _usedLabel.text = model.note;
//    _dateLabel.text = model.stage_time;
//    _orderNumberLabel.text = model.order_sn;
//}

@end
