//
//  ViewController.m
//  Category
//
//  Created by 周鹏翔 on 15/8/24.
//  Copyright (c) 2015年 周鹏翔. All rights reserved.
//

#import "ViewController.h"

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
- (instancetype)initWithTitle:(NSString *)title
                         date:(NSDate *)date
                     location:(NSString *)location

{
    self = [super init];
    if (self) {
//        _title    = title;
//        _date     = date;
//        _location = location;
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)title
                         date:(NSDate *)date
{
    return [self initWithTitle:title date:date location:nil];
    

    
}

- (instancetype)initWithTitle:(NSString *)title
{
    return [self initWithTitle:title date:[NSDate date] location:nil];
}
@end
