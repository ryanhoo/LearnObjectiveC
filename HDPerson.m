//
//  HDPerson.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "HDPerson.h"

@implementation HDPerson {
    NSString *_hello;
}

- (id)init
{
    return [self initWithFirstName: nil lastName: nil];
}

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName
{
    self = [super init];
    if (self) {
        self.firstName = [firstName copy];
        self.lastName = lastName;
    }
    return self;
}

+ (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName yearOfBirth:(NSDate *)yearOfBirth {
    HDPerson *person = [[HDPerson alloc] initWithFirstName: firstName lastName:lastName];
    person.yearOfBirth = yearOfBirth;
    return person;
}

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

- (id) copyWithZone:(NSZone *)zone {
    return [super copy];
}

- (void) dealloc {
    NSLog(@"the person is being deallocated");
}

- (NSString *)description {
    NSString* description = [NSString stringWithFormat: @"I am %@, and I was born at %@.", self.getFullName, [self.yearOfBirth description]];
    return description;
}

@end
