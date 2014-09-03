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
#import "NSString+NSString_ConvertWhiteSpace.h"

void testClasses() {
    HDPerson *person = [[HDPerson alloc] init];
    [person sayHello];
    [person sendMessageToSomeone:@"how are you?"];
    NSLog(@"person is %@", person);
    
//    person.firstName = @"ryan";
    [person setFirstName: @"ryan"];
//    person.lastName = @"hoo";
    [person setLastName: @"hoo"];

    NSLog(@"person's full name is %@", [person getFullName]);
    
    NSLog(@"person's name in uppercase is %@", [person.firstName uppercaseString]);
    
    HDProgrammer *programmer = [HDProgrammer new];
    programmer.firstName = @"ryan";
    [programmer program];
    
    // factory method doesn't need to init
    [HDProgrammer person];
    
    HDPerson *p = [[HDPerson alloc] initWithFirstName: @"Bruce" lastName: @"Lee"];
    NSLog(@"init with first name and last name : %@", [p getFullName]);
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

void testWeakReference() {
    HDPerson * __weak person = [HDPerson new];
    // assert the weak local variable is null now
    NSLog(@"the weak person now is %@", person);
}

void testCopy() {
    // if the person's firstName is conformed to the NSCopying protocol, the value would be ryan
    // if not, the value would be changed into ryan hoo by appending the ' hoo' to the original name string
    NSMutableString *nameString = [NSMutableString stringWithString: @"ryan"];
    HDPerson *person = [HDPerson new];
    person.firstName = nameString;
    [nameString appendString: @" hoo"];
    NSLog(@"the person's first name has been changed into %@", person.firstName);
}

void testFactoryInitMethod() {
    HDPerson *person = [HDPerson initWithFirstName: @"ryan" lastName: @"hoo" yearOfBirth: [NSDate new]];
    NSLog(@"%@", person);
}

void testCategory() {
    NSString *sentence = @"hello this is a sentence";
    NSLog(@"after convertion: %@", [sentence convertWhiteSpace]);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        testClasses();
//        testLiterals();
//        testEquality();
//        testNil();
//        testWeakReference();
//        testCopy();
//        testFactoryInitMethod();
        testCategory();
    }
    
    return 0;
}