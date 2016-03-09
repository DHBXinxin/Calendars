//
//  ViewController.m
//  Demo
//
//  Created by IOS on 16/3/9.
//  Copyright © 2016年 IOS. All rights reserved.
//

#import "ViewController.h"
#import "LunarSolarConverter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Solar *solar = [[Solar alloc]init];
    solar.solarDay = 9;
    solar.solarMonth = 3;
    solar.solarYear = 2016;
    
    Lunar *lunar = [LunarSolarConverter solarToLunar:solar];
    
    NSString *string = [self formatlunarWithYear:lunar.lunarYear AndMonth:lunar.lunarMonth AndDay:lunar.lunarDay];
    
    NSLog(@"%@",string);
}

- (NSString *)formatlunarWithYear:(int)year AndMonth:(int)month AndDay:(int)day
{
    NSArray *chineseMonths=[NSArray arrayWithObjects:
                            @"正月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月",
                            @"九月", @"十月", @"冬月", @"腊月", nil];
    NSArray *chineseDays=[NSArray arrayWithObjects:
                          @"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十",
                          @"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十",
                          @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十",  nil];
    return [NSString stringWithFormat:@"%d年%@%@", year, chineseMonths[month - 1], chineseDays[day - 1]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
