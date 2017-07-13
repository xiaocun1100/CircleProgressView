//
//  ViewController.m
//  CircleProgressViewTest
//
//  Created by 蒋小寸 on 2017/7/12.
//  Copyright © 2017年 蒋小寸. All rights reserved.
//

#import "ViewController.h"
#import "CircularProgressView.h"
@interface ViewController ()
{
    CircularProgressView *cirProgressView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    cirProgressView = [[CircularProgressView alloc]initWithFrame:self.view.bounds];
    cirProgressView.progress = 0;
    cirProgressView.backGroundColor = [UIColor greenColor];
    cirProgressView.forGroundColor = [UIColor redColor];
    [self.view addSubview:cirProgressView];
   
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}
- (void)sliderValueChanged:(UISlider *)slider{
    cirProgressView.progress = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
