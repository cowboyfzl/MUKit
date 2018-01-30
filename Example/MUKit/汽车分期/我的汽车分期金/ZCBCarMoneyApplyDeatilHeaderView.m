//
//  ZCBCarMoneyApplyDeatilHeaderView.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/27.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarMoneyApplyDeatilHeaderView.h"
#import "ZCBCarMoneyApplyDeatilCell.h"
#import "MUAdaptiveView.h"

@interface ZCBCarMoneyApplyDeatilHeaderView()
//<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableViewHeightConstraint;

@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *contactTextField;

@property (weak, nonatomic) IBOutlet UIView *decorationContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *decorationContentViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *decoAdaptiveView;


@property (weak, nonatomic) IBOutlet UIView *houseContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *houseContentViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *houlseAdaptiveView;

@property (weak, nonatomic) IBOutlet UIView *indentifierContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *indentifierContentViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *indenAdaptiveView;


@property (weak, nonatomic) IBOutlet UIView *paymentContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *paymentContentViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *payAdaptiveView;

@property (weak, nonatomic) IBOutlet UIView *creditContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *creditContentViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *creAdaptiveView;

@property (weak, nonatomic) IBOutlet UIView *flowContenView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *flowContenViewHeightConstraint;
@property (strong, nonatomic) MUAdaptiveView *flowAdaptiveView;
@end

static NSString * const cellReusedIdentifier = @"cell";
@implementation ZCBCarMoneyApplyDeatilHeaderView
/*
-(void)awakeFromNib{
    [super awakeFromNib];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self.tableview registerNib:[UINib nibWithNibName:@"ZCBCarMoneyApplyDeatilCell" bundle:nil] forCellReuseIdentifier:cellReusedIdentifier];
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableview.rowHeight = 48.;
    
    self.decoAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.decorationContentView.bounds))];
    self.decoAdaptiveView.backgroundColor = [UIColor whiteColor];
    [self.decorationContentView addSubview:self.decoAdaptiveView];
    self.decoAdaptiveView.tintColorMu = [UIColor clearColor];
    self.decoAdaptiveView.showTipsImage = NO;
    self.decoAdaptiveView.tipsString = @"";
    self.decoAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    

    weakify(self);
    self.decoAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.decorationContentViewHeightConstraint.constant = needHeight;
        self.decorationContentView.mj_h = self.decorationContentView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
        
    };
    self.houlseAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.houseContentView.bounds))];
    [self.houseContentView addSubview:self.houlseAdaptiveView];
    self.houlseAdaptiveView.backgroundColor = [UIColor whiteColor];
    self.houlseAdaptiveView.tintColorMu = [UIColor clearColor];
    self.houlseAdaptiveView.showTipsImage = NO;
    self.houlseAdaptiveView.tipsString = @"";
    self.houlseAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    
    self.houlseAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.houseContentViewHeightConstraint.constant = needHeight;
        self.houseContentView.mj_h = self.houseContentView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
    };
    
    
    self.indenAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.indentifierContentView.bounds))];
    self.indenAdaptiveView.backgroundColor = [UIColor whiteColor];
    [self.indentifierContentView addSubview:self.indenAdaptiveView];
    self.indenAdaptiveView.tintColorMu = [UIColor clearColor];
    self.indenAdaptiveView.showTipsImage = NO;
    self.indenAdaptiveView.tipsString = @"";
    self.indenAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    
    
    self.indenAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.indentifierContentViewHeightConstraint.constant = needHeight;
        self.indentifierContentView.mj_h = self.indentifierContentView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
        
    };
    self.payAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.paymentContentView.bounds))];
    [self.paymentContentView addSubview:self.payAdaptiveView];
    self.payAdaptiveView.backgroundColor = [UIColor whiteColor];
    self.payAdaptiveView.tintColorMu = [UIColor clearColor];
    self.payAdaptiveView.showTipsImage = NO;
    self.payAdaptiveView.tipsString = @"";
    self.payAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    
    self.payAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.paymentContentViewHeightConstraint.constant = needHeight;
        self.paymentContentView.mj_h = self.paymentContentView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
    };
    
    
    self.creAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.creditContentView.bounds))];
    self.creAdaptiveView.backgroundColor = [UIColor whiteColor];
    [self.creditContentView addSubview:self.creAdaptiveView];
    self.creAdaptiveView.tintColorMu = [UIColor clearColor];
    self.creAdaptiveView.showTipsImage = NO;
    self.creAdaptiveView.tipsString = @"";
    self.creAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    
    
    self.creAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.creditContentViewHeightConstraint.constant = needHeight;
        self.creditContentView.mj_h = self.creditContentView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
        
    };
    self.flowAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.flowContenView.bounds))];
    [self.flowContenView addSubview:self.flowAdaptiveView];
    self.flowAdaptiveView.backgroundColor = [UIColor whiteColor];
    self.flowAdaptiveView.tintColorMu = [UIColor clearColor];
    self.flowAdaptiveView.showTipsImage = NO;
    self.flowAdaptiveView.tipsString = @"";
    self.flowAdaptiveView.domain = [BSSCHttpTools getCurBaseURL];
    
    self.flowAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.paymentContentViewHeightConstraint.constant = needHeight;
        self.flowContenView.mj_h = self.flowContenView.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
    };
}

-(void)setModel:(BSSCModel *)model{
    _model = model;
    model.area_name = model.area_name?:@"";
    _addressTextField.text = [NSString stringWithFormat:@"%@%@%@",model.province_name,model.city_name,model.area_name];
    _detailAddressTextField.text = model.address;
    _contactTextField.text = model.mobile;
    NSMutableArray *array = self.model.schedule;
    self.tableViewHeightConstraint.constant = 48. * array.count;
    [self.tableview reloadData];
    self.decoAdaptiveView.imageArray = [[model.decoration_contract componentsSeparatedByString:@","] mutableCopy];
    self.houlseAdaptiveView.imageArray = [[model.reference componentsSeparatedByString:@","] mutableCopy];
    self.indenAdaptiveView.imageArray = [[model.id_card componentsSeparatedByString:@","] mutableCopy];
    self.payAdaptiveView.imageArray = [[model.loan_contract componentsSeparatedByString:@","] mutableCopy];
    
    self.creAdaptiveView.imageArray = [[model.credit componentsSeparatedByString:@","] mutableCopy];
    self.flowAdaptiveView.imageArray = [[model.bank_statement componentsSeparatedByString:@","] mutableCopy];
    UITableView *superView = (UITableView*)self.superview;
    [superView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZCBCarMoneyApplyDeatilCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReusedIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSMutableArray *array = self.model.schedule;
    cell.schedule_sataus = self.schedule_sataus;
    cell.model = array[indexPath.row];
    if (indexPath.row == array.count - 1) {
        cell.last = YES;
    }else{
        cell.last = NO;
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSMutableArray *array = self.model.schedule;
    return array.count;
}
*/
@end
