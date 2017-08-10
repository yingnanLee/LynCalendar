//
//  CalendarHomeVC.h
//  lynCa
//
//  Created by liyingnan on 2017/8/9.
//  Copyright © 2017年 李英男. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "calendarVC.h"
@interface CalendarHomeVC : calendarVC

@property(nonatomic, strong)NSString *calendarTitle; //导航栏

-(void)setTotalDays: (int)day TodateForString: (NSString *)toDate;

@end
