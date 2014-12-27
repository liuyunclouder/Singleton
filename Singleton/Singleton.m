//
//  Singleton.m
//  Singleton
//
//  Created by ezio on 14/12/27.
//  Copyright (c) 2014年 ezio. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *sharedSingleton = nil;
static Singleton *sharedSingletonNotInit = nil;

+(instancetype)shareInstance
{
    @synchronized(self){
        if (sharedSingletonNotInit == nil) {
            sharedSingletonNotInit = [self alloc];
            sharedSingleton = [sharedSingletonNotInit init];
        }
    }
    
    return sharedSingleton;
}

+(instancetype)alloc
{
    @synchronized(self){
        if (sharedSingletonNotInit == nil) {
            sharedSingletonNotInit = [super alloc];
        }

    }
    return sharedSingletonNotInit;
}

-(instancetype)copyWithZone:(NSZone *)zone
{
    return self;
}



@end
