//
//  KittenService.h
//  TheKitten
//
//  Created by Didiet Noor on 26/08/14.
//  Copyright (c) 2014 Didiet Noor. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^KittenSignInResponse)(BOOL);

@interface KittenService : NSObject

- (void) signInWithUserName: (NSString*) uname
                   password: (NSString*) password
                    complete: (KittenSignInResponse) response;

@end
