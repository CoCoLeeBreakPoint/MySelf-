//
//  FiveViewController.m
//  MySelf框架
//
//  Created by cocolee on 2017/4/11.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "FiveViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor orangeColor];
    
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 200, 50, 50);
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    btn.backgroundColor =[UIColor blackColor];
    [btn addTarget:self action:@selector(GO:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}
-(void)GO:(id)sender{
    
    sixViewController *fi =[[sixViewController alloc]init];
//    fi.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:fi animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
