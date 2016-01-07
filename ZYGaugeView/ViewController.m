//
//  ViewController.m
//  ZYGaugeView
//
//  Created by yi on 16/1/6.
//  Copyright © 2016年 yi. All rights reserved.
//

#import "ViewController.h"
#import "GaugeView.h"
#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

@interface ViewController ()
{
    GaugeView *gauV;
    UILabel *valueLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = RGB(116,148,173);
    
    gauV = [[GaugeView alloc] initWithFrame:CGRectMake((self.view.bounds.size.width-250)/2, 50, 250, 250)];
    gauV.backgroundColor = RGB(116,148,173);
    //开始角度
    gauV.startAngle = 60;
    //结束角度
    gauV.endAngle = 300;
    //刻度线数目
    gauV.count = 8;
    
    gauV.maxValue = 90;
    gauV.minValue = 10;
    gauV.value = 60;
    [self.view addSubview:gauV];
    
    UISlider *slide = [[UISlider alloc] initWithFrame:CGRectMake((self.view.bounds.size.width-250)/2, 300, 250, 50)];
    slide.minimumValue = gauV.minValue;
    slide.maximumValue = gauV.maxValue;
    slide.value = gauV.value;
    [slide addTarget:self action:@selector(slideChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slide];
    
    
    valueLabel = [[UILabel alloc] initWithFrame:CGRectMake((self.view.bounds.size.width-100)/2, 350, 100, 50)];
    valueLabel.text = [NSString stringWithFormat:@"%.2f",gauV.value];
    [self.view addSubview:valueLabel];
}


- (void)slideChange:(UISlider *)slide
{
    gauV.value = slide.value;
    valueLabel.text = [NSString stringWithFormat:@"%.2f",gauV.value];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
