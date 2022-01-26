//
//  MainViewController.m
//  Runner
//
//  Created by wangying on 2022/1/25.
//

#import "MainViewController.h"
#import <Flutter/Flutter.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor lightGrayColor];
  CGSize size = [[UIScreen mainScreen] bounds].size;

  FlutterViewController *flutter = [[FlutterViewController alloc] init];
  [self addChildViewController:flutter];
  flutter.view.frame = CGRectMake(0, 0, size.width, size.height - 70);
  [self.view addSubview:flutter.view];
  [flutter didMoveToParentViewController:self];
  
  UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(size.width / 3, size.height - 60, size.width / 3, 50)];
  [btn setTitle:@"go to native" forState:UIControlStateNormal];
  [btn setBackgroundColor:[UIColor blueColor]];
  [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview: btn];
}

- (void)onClick:(id)sender {
  UIViewController *vc = [[UIViewController alloc] init];
  [self.navigationController pushViewController:vc animated:YES];
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
