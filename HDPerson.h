//
//  HDPerson.h
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDPerson : NSObject

@property NSString *firstName;
@property NSString *lastName;
@property NSDate *yearOfBirth;
@property int age;

- (void)sayHello;

+ (void)person;

@end
