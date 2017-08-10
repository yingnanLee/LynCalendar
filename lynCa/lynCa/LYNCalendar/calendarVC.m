//
//  calendarVC.m
//  lynCa
//
//  Created by liyingnan on 2017/8/9.
//  Copyright © 2017年 李英男. All rights reserved.
//

#import "calendarVC.h"
#import "color.pch"
#import "calendarMounthCollectionViewLayout.h"
#import "calendarMounthHeaderView.h"
#import "calendarDayCell.h"
#import "calendarModel.h"

@interface calendarVC () <UICollectionViewDelegate, UICollectionViewDataSource>
{
    NSTimer *timer; //定时器
}

@property(nonatomic, assign) NSUInteger num;
@end

@implementation calendarVC

static NSString *MonthHeader = @"MonthHeaderView";

static NSString *DayCell = @"DayCell";

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self initData];
        [self initView];
    }
    return  self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)initView {

    NSArray *titleArr = @[@"一", @"二", @"三", @"四", @"五", @"六", @"日"];
    CGFloat width = [UIScreen mainScreen].bounds.size.width / 7;
    CGFloat height = 37;
    UIView *weekView = [[UIView alloc]init];
    weekView.backgroundColor = colorRiqiBackColor;
    if ([UIScreen mainScreen].bounds.size.height == 736) {
        weekView.frame =  CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height * 0.215 - 44);
    }else if ([UIScreen mainScreen].bounds.size.height == 568){
        weekView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width ,[UIScreen mainScreen].bounds.size.height * 0.151 - 49);
    }else{
        weekView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width,height - 44);
    }
    
    for (int i =0 ; i < titleArr.count; i++) {
        UILabel *lab = [[UILabel alloc]init];
        lab.text = titleArr[i];
        lab.font = [UIFont systemFontOfSize:18.0];
        lab.textAlignment = NSTextAlignmentCenter;
        lab.textColor = [UIColor blackColor];
        if (i == 0 || i == 6) {
            lab.textColor = COLOR_THEME2;
        }
        
        CGFloat labH =  [UIScreen mainScreen].bounds.size.height * 0.215 - 44;
        if ([UIScreen mainScreen].bounds.size.height == 736) {
            lab.frame = CGRectMake(i * width, 32, width, labH);
        }else if ([UIScreen mainScreen].bounds.size.height == 568){
            lab.frame = CGRectMake(i * width, 12, width, 18);
        }else{
            lab.frame = CGRectMake(i * width, 15, width, 20);
        }
        
        [weekView addSubview:lab];
    }
    
    
    
    
}


-(void)initData {
    
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
