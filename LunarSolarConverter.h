//
//  LunarSolarConverter.h
//  Demo
//
//  Created by IOS on 16/3/9.
//  Copyright © 2016年 IOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Solar.h"
#import "Lunar.h"

@interface LunarSolarConverter : NSObject
/**
 *农历转公历
 */
+ (Solar *)lunarToSolar:(Lunar *)lunar;

/**
 *公历转农历
 */
+ (Lunar *)solarToLunar:(Solar *)solar;

@end
