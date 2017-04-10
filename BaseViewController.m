//
//  BaseViewController.m
//  MySelf框架
//
//  Created by cocolee on 2017/4/10.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "BaseViewController.h"

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "MyNavViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.translucent = NO;
    [self createViewController];
    

}

/**
 *
 *  初始化 UIViewController
 */

-(void)createViewController{
    
    OneViewController *one =[[OneViewController alloc]init];
    [self setupChildViewController:one image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"首页"];
    
    TwoViewController *two =[[TwoViewController alloc]init];
   [self setupChildViewController:two image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"热门"];
    
    ThreeViewController *three =[[ThreeViewController alloc]init];
    [self setupChildViewController:three image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"广场"];
    
    FourViewController *four =[[FourViewController alloc]init];
    [self setupChildViewController:four image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"我的"];
    
}


/**
 *  添加一个子控制器的方法
 */


-(void)setupChildViewController:(UIViewController*)viewController
                          image:(UIImage*)image
                        unimage:(UIImage*)images
                          title:(NSString*)title{
    
    MyNavViewController *naV =[[MyNavViewController alloc]init];
    naV.title = title;
    naV.tabBarItem.image = images;
    naV.tabBarItem.selectedImage = image;
    //选中时状态
    naV.tabBarItem.selectedImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:naV];
    
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
