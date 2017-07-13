//
//  CircularProgressView.m
//  AnimationsTest
//
//  Created by 蒋小寸 on 2017/7/12.
//  Copyright © 2017年 蒋小寸. All rights reserved.
//

#import "CircularProgressView.h"
static const CGFloat kLineWidth = 10.0;
@implementation CircularProgressView
{
    UIBezierPath *bgPath;
    UIBezierPath *progressPath;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = self.backGroundColor?self.backGroundColor:[UIColor clearColor];
        self.lineWidth = self.lineWidth>0?self.lineWidth:kLineWidth;
    }
    return self;
}
- (id)initWithRadius:(CGFloat)radius{
    if (self = [super initWithFrame:CGRectMake(0, 0, radius, radius)]) {
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    float radius = MIN(rect.size.width * 0.5, rect.size.height);
    bgPath = [[UIBezierPath alloc]init];
    bgPath.lineWidth = self.lineWidth;
    [bgPath addArcWithCenter:self.center radius:radius startAngle:-M_PI *0.5 endAngle:M_PI*2  -M_PI *0.5 clockwise:YES];
    UIColor *bgColor = self.backGroundColor?self.backGroundColor:[UIColor redColor];
    [bgColor setStroke];
    [bgPath stroke];
    
    progressPath = [[UIBezierPath alloc]init];
    progressPath.lineWidth = self.lineWidth;
    [progressPath addArcWithCenter:self.center radius:radius startAngle:-M_PI *0.5 endAngle:M_PI*2 *self.progress -M_PI *0.5 clockwise:YES];
    UIColor * progressColor = self.forGroundColor?self.forGroundColor:[UIColor redColor];
    [progressColor setStroke];
    [progressPath stroke];
    
    
}

- (void)setProgress:(CGFloat)progress{
    _progress = progress;
    NSLog(@"%f",progress);
    [self setNeedsDisplay];
}
@end
