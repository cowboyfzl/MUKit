//
//  ZCBCarMoneyUsedcell.m
//  ZhaoCaiHuiBaoRt
//
//  Created by wzs on 2018/1/15.
//  Copyright © 2018年 ttayaa. All rights reserved.
//

#import "ZCBCarMoneyUsedcell.h"

@interface ZCBCarMoneyUsedcell()
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@end

@implementation ZCBCarMoneyUsedcell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//-(void)setModel:(BSSCModel *)model{
//    _model = model;
//    _numberLabel.text = model.order_no;
//    _moneyLabel.text = [NSString stringWithFormat:@"%@",model.money];
//    _dateLabel.text = [NSString timeWithTimeIntervalString:model.lending_time Format:@"yyyy/MM/dd"];
//    _statusLabel.text = [model.status integerValue]==1?@"已到账":@"准备到账";
//    
//    if ([model.status integerValue]==1) {
//        _numberLabel.textColor = [UIColor grayColor];
//        _moneyLabel.textColor = [UIColor grayColor];
//        _dateLabel.textColor = [UIColor grayColor];
//        _statusLabel.textColor = [UIColor grayColor];
//    }else{
//        _numberLabel.textColor = [UIColor blackColor];
//        _moneyLabel.textColor = [UIColor blackColor];
//        _dateLabel.textColor = [UIColor blackColor];
//        _statusLabel.textColor = [UIColor blackColor];
//    }
//}
@end
