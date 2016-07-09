//
//  ViewController.m
//  CoreAnimation
//
//  Created by hgdq on 16/7/9.
//  Copyright © 2016年 hgdq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self example1];
    [self example2];
    [self example3];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 *  获取视图对应的layer
 */
- (void)example1 {
    NSLog(@"%@",[UIView layerClass]);
    // CALayer
}

- (void)example2 {
    UIImageView *myImageView = [[UIImageView alloc] init];
    myImageView.frame = CGRectMake(10, 100, 130, 100);
    myImageView.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:myImageView];
    
    // 设置一个边框
    myImageView.layer.backgroundColor = [UIColor greenColor].CGColor;
    myImageView.layer.borderColor = [UIColor blackColor].CGColor;
    myImageView.layer.borderWidth = 1.0;
    // 设置圆角
    myImageView.layer.cornerRadius = 8.0;
    // 不超出边界
//    myImageView.clipsToBounds = YES;
//    myImageView.layer.masksToBounds = YES;
    // 调整显示模式
    // 方式一
//    myImageView.layer.contentsGravity = kCAGravityResizeAspectFill;
    // 方式二
    myImageView.contentMode = UIViewContentModeScaleToFill;
    // 设置阴影
    myImageView.layer.shadowOffset = CGSizeMake(5, 5);;
    myImageView.layer.shadowOpacity = 0.5;
}

- (void)example3 {
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(10, 220, 100, 100)];
    myView.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"1"].CGImage);
    [self.view addSubview:myView];
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
