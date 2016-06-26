//
//  HTTPService.h
//  FreeVideosApp
//
//  Created by marvin evins on 6/25/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^onComplete) (NSDictionary * __nullable err);


@interface HTTPService : NSObject

+ (id) instance ;

-(void) getTutorials:(nullable onComplete) completionHandler;

@end
