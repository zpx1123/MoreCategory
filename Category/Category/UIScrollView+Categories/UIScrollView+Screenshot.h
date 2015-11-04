//
//  UIScrollView+Screenshot.h
//  NYXImagesKit
//
//  Created by @Nyx0uf on 29/03/13.
//  Copyright 2013 Nyx0uf. All rights reserved.
//  www.cocoaintheshell.com
//
typedef enum {
    XAnimationCellTypeScaleFadeIn,     // 由大及小渐入
    XAnimationCellTypeNarrowFadeIn,    // 由宽及窄渐入
} XAnimationCellType;               // cell出现方式的动画类型

//typedef NS_ENUM(NSUInteger, ZOCMachineState) {
//    ZOCMachineStateNone,
//    ZOCMachineStateIdle,
//    ZOCMachineStateRunning,
//    ZOCMachineStatePaused
//};

#import "NYXImagesHelper.h"

typedef NS_ENUM(NSUInteger, ZOCMachineState) {
    ZOCMachineStateNone,
    ZOCMachineStateIdle,
    ZOCMachineStateRunning,
    ZOCMachineStatePaused
};
@interface UIScrollView (NYX_Screenshot)

-(UIImage*)imageByRenderingCurrentVisibleRect;

@end
