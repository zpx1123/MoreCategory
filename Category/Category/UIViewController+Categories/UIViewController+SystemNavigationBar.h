//
//  UIViewController+SystemNavigationBar.h
//  dfsdgsf
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^HCnCallback_Block_Void)(void);


@interface UIViewController (SystemNavigationBar)

@property(nonatomic,copy)HCnCallback_Block_Void                 _liftbuttonClickBlock;
@property(nonatomic,copy)HCnCallback_Block_Void                 _rightbuttonClickBlock;

-(void) addSystemNavigationBar:(NSString*)_lImage liftButtonClickBlock:(HCnCallback_Block_Void)_lblock Title:(NSString*)_titles RImage:(NSString*)_rImage rightButtonClickBlock:(HCnCallback_Block_Void)_rblock;
@end
