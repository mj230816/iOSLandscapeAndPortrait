//
//  ViewController.m
//  test
//
//  Created by 宋千 on 2017/10/16.
//  Copyright © 2017年 宋千. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


#define APP [UIApplication sharedApplication]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)hengping:(id)sender {
    
//    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]
//                                forKey:@"orientation"];
//    APP.statusBarOrientation = UIDeviceOrientationLandscapeLeft;
//    APP.statusBarStyle = UIStatusBarStyleLightContent;
//    APP.statusBarHidden = NO;
    
    AppDelegate *del = APP.delegate;
    del.allowRotation = !del.allowRotation;
    
    [[UIDevice currentDevice]setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]
                               forKey:@"orientation"];
    [[self class] attemptRotationToDeviceOrientation];
    
}


//- (BOOL)shouldAutorotate {
//    return YES;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskPortrait;
//}
//
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//    return UIInterfaceOrientationPortrait;
//}
//
//- (BOOL)prefersStatusBarHidden {
//    return NO;
//}

//-(BOOL)shouldAutorotate
//{
//    return NO;
//}
//- (NSUInteger)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskLandscapeRight;
//}


@end
