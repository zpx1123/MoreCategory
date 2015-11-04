//
//  UIApplication+NetworkActivity.m
//
//  Created by Maciej Swic on 2013-04-29.
//  Released under the MIT license.
//

#import "UIApplication+NetworkActivity.h"

@implementation UIApplication (NetworkActivity)

static NSLock *networkOperationCountLock;
static NSInteger networkOperationCount;

+ (void)startNetworkActivity {
    [self createLock];
    [networkOperationCountLock lock];
    networkOperationCount++;
    [networkOperationCountLock unlock];
    [[UIApplication sharedApplication] updateNetworkActivityIndicator];
}

+ (void)finishNetworkActivity {
    [self createLock];
    [networkOperationCountLock lock];
    networkOperationCount--;
    [networkOperationCountLock unlock];
    [[UIApplication sharedApplication] updateNetworkActivityIndicator];
}

+ (void)createLock {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        networkOperationCountLock = [NSLock new];
    });
}

- (void)updateNetworkActivityIndicator {
    [self setNetworkActivityIndicatorVisible:(networkOperationCount > 0 ? TRUE : FALSE)];
    
    [networkOperationCountLock lock];
    if (networkOperationCount < 0) {
        networkOperationCount = 0;
    }
    [networkOperationCountLock unlock];
}

@end
