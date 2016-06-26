//
//  HTTPService.m
//  FreeVideosApp
//
//  Created by marvin evins on 6/25/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

#import "HTTPService.h"
#define URL_BASE "http://localhost:8000"
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService

+ (id) instance {
    static  HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil)
            sharedInstance = [[self alloc] init];
    }
    
    return sharedInstance;
}

-(void) getTutorials:(nullable onComplete) completionHandler {
    
    NSURL *url = [NSURL URLWithString: [NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data != nil){
            NSError *err;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err ];
            
            if (err == nil){
                NSLog(@"JSON: %@", json.debugDescription);
            }
            
            else {
                NSLog(@"Err: %@", error.debugDescription);
            }
        }
        
        
    }] resume];
}

@end
