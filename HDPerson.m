//
//  HDPerson.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "HDPerson.h"

@implementation HDPerson

- (void)sayHello {
    [self logMessage:@"Hello Wrold!"];
}

- (void)sendMessageToSomeone:(NSString *)name {
    [self logMessage:[NSString stringWithFormat:@"hello, some brought you a message %@", name]];
}

- (void)logMessage: (NSString *)message {
    NSLog(@"%@", message);
}

- (NSString *)getFullName {
    return [NSString stringWithFormat: @"%@ %@", self.firstName, self.lastName];
}

+ (void)person {
    NSLog(@"I am a person");
}

@end
