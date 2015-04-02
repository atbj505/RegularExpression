//
//  ViewController.m
//  RegularExpression
//
//  Created by Robert on 15/4/2.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    NSString *searchText = @"你是逼";
    
    NSRange range1 = [searchText rangeOfString:@"[\s|\S]*你是逼" options:NSRegularExpressionSearch];
    if (range1.location != NSNotFound) {
        NSLog(@"%@", [searchText substringWithRange:range1]);
    }
    NSRange range2 = [searchText rangeOfString:@"(?:[^,])*\\." options:NSRegularExpressionSearch];
    if (range2.location != NSNotFound) {
        NSLog(@"%@", [searchText substringWithRange:range2]);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
