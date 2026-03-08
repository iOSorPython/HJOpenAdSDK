//
//  HViewController.m
//  HJOpenAd
//
//  Created by 260413992@qq.com on 05/29/2024.
//  Copyright (c) 2024 260413992@qq.com. All rights reserved.
//

#import "HViewController.h"
#import <HJOpenAdSDK/HJAdsOpen.h>

@interface HViewController ()<HJSplashAdDelegate>

@property (nonatomic, strong) HJAdsSdkSplash *splash;
@property (nonatomic, strong) UIImageView *splashImageView;


@end

@implementation HViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    HJAdsRequest *request = [HJAdsRequest request];
    request.placementId = @"5550106182945807";




    self.splash = [[HJAdsSdkSplash alloc] initWithRequest:request];
    self.splash.delegate = self;
    self.splash.rootViewController = self;


    //由于idfa是必须在applicationDidBecomeActiveNotification这个方法中获取, 而这个方法的执行，会在闪屏页面的viewDidload之后
    //所以，如果是采取主动注入idfa到sdk内部的方式， 那么就需要在这里做一个延时操作；否则，闪屏的请求发送时， 获取不到idfa。经测试300ms就够了
    [self.splash loadAdAndShow];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
