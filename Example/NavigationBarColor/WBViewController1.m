//
//  WBViewController1.m
//  NavigationBarColor_Example
//
//  Created by nana on 2019/11/13.
//  Copyright © 2019 304635659@qq.com. All rights reserved.
//

#import "WBViewController1.h"
#import "UINavigationBar+wbColor.h"

@interface WBViewController1 ()
@property(nonatomic, strong)UIButton *pushbtn;
@property(nonatomic, strong)UIButton *popbtn;
@end

@implementation WBViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
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
    
}

- (void)pushbtnClick:(UIButton *)btn {
   WBViewController1 *vc = [[WBViewController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)popbtnClick:(UIButton *)btn {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
