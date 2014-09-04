//
//  HDPerson.h
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDPerson : NSObject <NSCopying>

@property (copy) NSString *firstName;
@property NSString *lastName;
@property NSDate *yearOfBirth;
@property int age;
@property (getter = isMale) BOOL male;

@property (readonly) NSString *uniqueIdentifier;

- (id)initWithFirstName: (NSString *)firstName lastName:(NSString *)lastName;

+ (id)initWithFirstName: (NSString *)firstName lastName:(NSString *)lastName yearOfBirth: (NSDate *)yearOfBirth;

- (void)sayHello;

- (void)sendMessageToSomeone: (NSString *)name;

- (void)logMessage: (NSString*)message;

- (NSString *)getFullName;

- (NSString *)requestUniqueueIdentifier;

+ (void)person;

@end
