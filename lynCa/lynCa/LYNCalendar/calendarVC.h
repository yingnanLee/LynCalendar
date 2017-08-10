//
//  calendarVC.h
//  lynCa
//
//  Created by liyingnan on 2017/8/9.
//  Copyright © 2017年 李英男. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "calendarLogic.h"

typedef void(^calenderBlock)(calendarModel *model);

@interface calendarVC : UIViewController

@property(nonatomic, strong) UICollectionView *collectionView;
@property(nonatomic, strong)NSMutableArray *calendarMounth;
@property(nonatomic, strong) calendarLogic *logic;
@property(nonatomic, copy)calenderBlock calendarBlock;


@end
