//
//  UIViewController+SystemNavigationBar.m
//  dfsdgsf
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "UIViewController+SystemNavigationBar.h"


@implementation UIViewController (SystemNavigationBar)
//生成系统导航栏
-(void) addSystemNavigationBar:(NSString*)_lImage liftButtonClickBlock:(HCnCallback_Block_Void)_lblock Title:(NSString*)_titles RImage:(NSString*)_rImage rightButtonClickBlock:(HCnCallback_Block_Void)_rblock{
    
//    self._liftbuttonClickBlock = _lblock;
//    self._rightbuttonClickBlock = _rblock;
//    
//    //
//    if (_lImage!=nil) {
//        UIButton *customButton = [[UIButton alloc] initWithFrame:CGRectMake(0,0,20,20)];
//        // Add your action to your button
//        [customButton addTarget:self action:@selector(liftBarButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
//        // Customize your button as you want, with an image if you have a pictogram to display for example
//        [customButton setImage:[UIImage imageNamed:_lImage] forState:UIControlStateNormal];
//        
//        BBBadgeBarButtonItem *barButton = [[BBBadgeBarButtonItem alloc] initWithCustomUIButton:customButton];
//        // Set a value for the badge
//        barButton.badgeValue = @"0";
//        
//        barButton.badgeOriginX = 13;
//        barButton.badgeOriginY = -9;
//        
//        // Add it as the leftBarButtonItem of the navigation bar
//        self.navigationItem.leftBarButtonItem = barButton;
//    }else{
//        [self.navigationItem setHidesBackButton:YES];
//        self.navigationItem.leftBarButtonItem=nil;
//    }
    
    if (_titles!=nil) {
        self.navigationItem.title = _titles;
    }
    
    //
    if (_rImage!=nil) {
        
//        [self createrightButton:_rImage];
        
    }else{
        self.navigationItem.rightBarButtonItem = nil;
    }

}



@end

