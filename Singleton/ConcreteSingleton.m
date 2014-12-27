//
//  ConcreteSingleton.m
//  Singleton
//
//  Created by ezio on 14/12/27.
//  Copyright (c) 2014年 ezio. All rights reserved.
//

#import "ConcreteSingleton.h"

@implementation ConcreteSingleton

+(instancetype)shareInstance{
    ConcreteSingleton *instance = [super shareInstance];
    if (instance) {
        [instance additionalInit];
    }
    return instance;
}

-(void)additionalInit
{
    NSLog(@"I am in Europe");
}

@end
