//
//  ViewController.m
//  Singleton
//
//  Created by ezio on 14/12/27.
//  Copyright (c) 2014年 ezio. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ConcreteSingleton *obj = [ConcreteSingleton shareInstance];
    ConcreteSingleton *obj_copied = [obj copy];
    ConcreteSingleton *obj_alloced = [[ConcreteSingleton alloc] init];
    
    if ([obj isEqual:obj_copied]) {
        NSLog(@"return shared instance when copied");
    }
    
    if ([obj isEqual:obj_alloced]) {
        NSLog(@"return shared instance when realloc");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
