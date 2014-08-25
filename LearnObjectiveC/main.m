//
//  main.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDPerson.h"
#import "HDProgrammer.h"

void testClasses() {
    HDPerson *person = [[HDPerson alloc] init];
    [person sayHello];
    [person sendMessageToSomeone:@"how are you?"];
    NSLog(@"person is %@", person);
    
    person.firstName = @"ryan";
    person.lastName = @"hoo";
    NSLog(@"person's full name is %@", [person getFullName]);
    
    NSLog(@"person's name in uppercase is %@", [person.firstName uppercaseString]);
    
    
    HDProgrammer *programmer = [HDProgrammer new];
    programmer.firstName = @"ryan";
    [programmer program];
    
    // factory method doesn't need to init
    [HDProgrammer person];
    
}

void testLiterals() {
    NSNumber *myBool = @NO;
    NSNumber *myInt = @(4-1);
    NSNumber *myFloat = @3.14f;
    NSNumber *myLong = @23L;
    NSLog(@"bool: %@, int: %@, float: %@, long: %@", myBool, myInt, myFloat, myLong);
}

void testEquality() {
    HDPerson *person1 = [[HDPerson alloc] init];
    HDPerson *person2 = person1;
    person1.firstName = @"ryan";
    person2.firstName = @"hoo";
    NSLog(@"the person1 is %@, person2 is %@", person1, person2);
    NSLog(@"==: %d", person1 == person2);
    NSLog(@"equality: %d", [person1 isEqual:person2]);
    
    NSDate *now = [[NSDate alloc] init];
    NSDate *current = [[NSDate alloc] init];
    NSLog(@"now: %@, current: %@", now, current);
    NSLog(@"==: %d", now == current);
    NSLog(@"equality: %d", [person1 isEqual:person2]);
    NSLog(@"compare: %d", [now compare:current] == NSOrderedDescending);
}

void testNil() {
    HDPerson *person = [[HDPerson alloc] init];
    if (person != nil) {
        NSLog(@"person obj is %@", person);
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        testClasses();
//        testLiterals();
//        testEquality();
        testNil();
    }
    return 0;
}