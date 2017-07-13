//
//  CircularProgressView.h
//  AnimationsTest
//
//  Created by 蒋小寸 on 2017/7/12.
//  Copyright © 2017年 蒋小寸. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircularProgressView : UIView

@property (nonatomic,strong) UIColor *forGroundColor;
@property (nonatomic,strong) UIColor *backGroundColor;
@property (nonatomic) CGFloat progress;//0...1.0
@property (nonatomic) CGFloat lineWidth;//进度条宽度
@end
