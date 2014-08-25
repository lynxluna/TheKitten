//
//  KittenService.m
//  TheKitten
//
//  Created by Didiet Noor on 26/08/14.
//  Copyright (c) 2014 Didiet Noor. All rights reserved.
//

#import "KittenService.h"

@implementation KittenService

- (void) signInWithUserName:(NSString *)uname password:(NSString *)password complete:(KittenSignInResponse)response
{
  static const float delay = 2.0f;
  dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t) delay * NSEC_PER_SEC);
  dispatch_after(popTime, dispatch_get_main_queue(), ^{
    BOOL succeeded = [uname isEqualToString:@"didiet"] && [password isEqualToString:@"ganteng"];
    response(succeeded);
  });
}

@end
