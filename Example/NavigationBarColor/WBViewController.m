//
//  WBViewController.m
//  NavigationBarColor
//
//  Created by 304635659@qq.com on 11/13/2019.
//  Copyright (c) 2019 304635659@qq.com. All rights reserved.
//

#import "WBViewController.h"
#import "WBViewController1.h"
#import "UINavigationBar+wbColor.h"

@interface WBViewController ()

@property(nonatomic, strong)UIButton *pushbtn;
@property(nonatomic, strong)UIButton *popbtn;
@property(nonatomic, strong)UIButton *colorbtn;
@property(nonatomic, strong)UIButton *hidenbtn;
@end

@implementation WBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];

    self.pushbtn = [[UIButton alloc] init];
    self.pushbtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [self.pushbtn setTitle:@"push" forState:UIControlStateNormal];
    self.pushbtn.frame = CGRectMake(0, 100, 50, 50);
    [self.pushbtn addTarget:self action:@selector(pushbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.pushbtn];
    
    
    self.popbtn = [[UIButton alloc] init];
    self.popbtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [self.popbtn setTitle:@"pop" forState:UIControlStateNormal];
    self.popbtn.frame = CGRectMake(100, 100, 50, 50);
    [self.popbtn addTarget:self action:@selector(popbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.popbtn];
    
    self.colorbtn = [[UIButton alloc] init];
    self.colorbtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [self.colorbtn setTitle:@"color" forState:UIControlStateNormal];
    self.colorbtn.frame = CGRectMake(200, 100, 50, 50);
    [self.colorbtn addTarget:self action:@selector(colorbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.colorbtn];
    
    self.hidenbtn = [[UIButton alloc] init];
    self.hidenbtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [self.hidenbtn setTitle:@"hiden" forState:UIControlStateNormal];
    self.hidenbtn.frame = CGRectMake(300, 100, 50, 50);
    [self.hidenbtn addTarget:self action:@selector(hidenbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.hidenbtn];
}

- (void)pushbtnClick:(UIButton *)btn {
   WBViewController1 *vc = [[WBViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)popbtnClick:(UIButton *)btn {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)colorbtnClick:(UIButton *)btn {
    [self.navigationController.navigationBar wb_setBarTintColor:[UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1] vcClass:[self class]];
}

- (void)hidenbtnClick:(UIButton *)btn {
    btn.selected = !btn.selected;
    [self.navigationController.navigationBar wb_setHidden:btn.selected vcClass:[self class]];
}




@end
