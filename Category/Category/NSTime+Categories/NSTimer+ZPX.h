//
//  NSTimer+ZPX.h
//  dddddddd
//
//  Created by 周鹏翔 on 15/8/24.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (ZPX)
+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
+(id)timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;

-(void)pauseTimer;
-(void)resumeTimer;
@end
