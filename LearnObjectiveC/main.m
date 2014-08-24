//
//  main.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/22/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HDPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        HDPerson *person = [[HDPerson alloc] init];
        [person sayHello];
    }
    return 0;
}

