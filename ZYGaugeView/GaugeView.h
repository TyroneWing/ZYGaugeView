//
//  GaugeView.h
//
//  Created by yi on 16/1/5.
//  Copyright © 2016年 yi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GaugeView : UIView

@property (nonatomic,assign) float value;
@property (nonatomic,assign) float minValue;
@property (nonatomic,assign) float maxValue;
@property (nonatomic,strong) UIColor *startColor;
@property (nonatomic,strong) UIColor *endColor;
//刻度线数
@property (nonatomic,assign) int count;
//开始角度
@property (nonatomic,assign) CGFloat startAngle;
//结束角度
@property (nonatomic,assign) CGFloat endAngle;
//圆弧线宽
@property (nonatomic,assign) CGFloat lineWidth;

@end
