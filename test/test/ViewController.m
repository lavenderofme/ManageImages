//
//  ViewController.m
//  test
//
//  Created by 刘燕青 on 2018/12/13.
//  Copyright © 2018 刘燕青. All rights reserved.
//

#import "ViewController.h"
#import <XBLImages/R.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:R_xbl_cart_add_disable]];
    imageView.frame = CGRectMake(100, 100, 23, 23);
    [self.view addSubview:imageView];
}


@end
