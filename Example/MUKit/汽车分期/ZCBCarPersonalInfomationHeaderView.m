//
//  ZCBCarPersonalInfomationHeaderView.m
//  MUKit_Example
//
//  Created by Jekity on 2017/12/26.
//  Copyright © 2017年 Jeykit. All rights reserved.
//

#import "ZCBCarPersonalInfomationHeaderView.h"
//#import "TZImagePickerController.h"
#import "MUAdaptiveView.h"


@interface ZCBCarPersonalInfomationHeaderView ()
//<TZImagePickerControllerDelegate>


@property (weak, nonatomic) IBOutlet UIView *indentifierContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *indentifierContentViewHeightConstraint;


@property (weak, nonatomic) IBOutlet UIView *paymentContentView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *paymentContentViewHeightConstraint;

@property (strong, nonatomic) MUAdaptiveView *indenAdaptiveView;
@property (strong, nonatomic) MUAdaptiveView *payAdaptiveView;
@end

@implementation ZCBCarPersonalInfomationHeaderView

-(void)awakeFromNib{
    [super awakeFromNib];
//    self.indenAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.indentifierContentView.bounds))];
    self.indenAdaptiveView.backgroundColor = [UIColor whiteColor];
    [self.indentifierContentView addSubview:self.indenAdaptiveView];
    self.indenAdaptiveView.tipsImage = [UIImage imageNamed:@"zh_icon_14"];
    self.indenAdaptiveView.tipsString = @"";
//    self.indenAdaptiveView.tintColorMu = TTGrayColor(240.);
    
    self.indentifierImageArray = [NSMutableArray array];
    self.paymentImageArray     = [NSMutableArray array];
    
    /*
    NSMutableArray *mArray = [NSMutableArray array];
    weakify(self)
    self.indenAdaptiveView.addItemByTaped = ^{
        normalize(self)
        TZImagePickerController *manager = [[TZImagePickerController alloc]initWithMaxImagesCount:500 delegate:self];
        manager.didFinishPickingPhotosHandle = ^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
            
            [mArray addObjectsFromArray:photos];
            self.indentifierImageArray = mArray;
            self.indenAdaptiveView.imageArray = mArray;
        };
        
        [[self viewController].navigationController presentViewController:manager animated:YES completion:nil];
    };
    
    self.indenAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.indentifierContentViewHeightConstraint.constant = needHeight;
        self.mj_h = self.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
        
    };
    self.payAdaptiveView = [[MUAdaptiveView alloc]initWithFrame:CGRectMake(0, 0, hScreenWidth, CGRectGetHeight(self.paymentContentView.bounds))];
    [self.paymentContentView addSubview:self.payAdaptiveView];
    self.payAdaptiveView.tipsImage = [UIImage imageNamed:@"zh_icon_14"];
    self.payAdaptiveView.backgroundColor = [UIColor whiteColor];
    self.payAdaptiveView.tipsString = @"";
    self.payAdaptiveView.tintColorMu = TTGrayColor(240.);
    
    NSMutableArray *mmArray = [NSMutableArray array];
    self.payAdaptiveView.addItemByTaped = ^{
        normalize(self)
        TZImagePickerController *manager = [[TZImagePickerController alloc]initWithMaxImagesCount:500 delegate:self];
        manager.didFinishPickingPhotosHandle = ^(NSArray<UIImage *> *photos, NSArray *assets, BOOL isSelectOriginalPhoto) {
            
            [mmArray addObjectsFromArray:photos];
            self.paymentImageArray = mmArray;
            self.payAdaptiveView.imageArray = mmArray;
        };
        
        [[self viewController].navigationController presentViewController:manager animated:YES completion:nil];
    };
    
    self.payAdaptiveView.changedFrameBlock = ^(CGFloat needHeight) {
        normalize(self)
        self.paymentContentViewHeightConstraint.constant = needHeight;
        self.mj_h = self.mj_h + needHeight - 118.;
        UITableView *tableView = (UITableView *)self.superview;
        [tableView reloadData];
    };
     */
}

@end
