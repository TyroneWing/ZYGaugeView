//
//  GaugeView.h
//  Test
//
//  Created by yi on 16/1/5.
//  Copyright © 2016年 yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GaugeView : UIView

@property (nonatomic,assign) int count;
@property (nonatomic,assign) float value;
@property (nonatomic,assign) float minValue;
@property (nonatomic,assign) float maxValue;

@property (nonatomic,assign) CGFloat startAngle;
@property (nonatomic,assign) CGFloat endAngle;

@property (nonatomic,assign) CGFloat lineWidth;

@property (nonatomic,strong) UIColor *startColor;
@property (nonatomic,strong) UIColor *endColor;


@end
