//
//  HTTPService.m
//  FreeVideosApp
//
//  Created by marvin evins on 6/25/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService

+ (id) instance {
    static  HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc] init];
    }
    
    return sharedInstance;
}

@end
