//
//  UINavigationController+Rotation_IOS6.m
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/7.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "UINavigationController+Rotation_IOS6.h"

@implementation UINavigationController (Rotation_IOS6)
-(BOOL)shouldAutorotate {
    
    //NSLog(@"UINavigationController 100");
    // 不想其子页面支持旋转， 可直接返回 NO
    //return NO;
//    return [self.visibleViewController shouldAutorotate];
//    return [[self.viewControllers lastObject] shouldAutorotate];
    
    return  [self.topViewController shouldAutorotate];
    
}

-(NSUInteger)supportedInterfaceOrientations {
    // NSLog(@"UINavigationController 200");
//    return [self.visibleViewController supportedInterfaceOrientations];
//    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
    return  [self.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    // NSLog(@"UINavigationController 300");
//    return [self.visibleViewController preferredInterfaceOrientationForPresentation];
//    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
    return  [self.topViewController preferredInterfaceOrientationForPresentation];
}
@end
