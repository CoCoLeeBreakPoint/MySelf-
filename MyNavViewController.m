//
//  MyNavViewController.m
//  MySelf框架
//
//  Created by cocolee on 2017/4/10.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "MyNavViewController.h"

@interface MyNavViewController ()

@end

@implementation MyNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self SetUpNaviagtionBar];
    

}
/**
*  设置导航栏
*/
-(void)SetUpNaviagtionBar{
    
    UINavigationBar *appearance =[UINavigationBar appearance];
    [appearance setBackgroundColor:[UIColor redColor]];
    
    [appearance setBarTintColor:[UIColor redColor]];//IOS7 之后都用这个方法
    
    
    NSMutableDictionary *textAtt =[NSMutableDictionary dictionary];
    textAtt[NSForegroundColorAttributeName] = [UIColor whiteColor];
        
    [appearance setTitleTextAttributes:textAtt];
    
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
