//
//  HDProgrammer.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 8/24/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "HDProgrammer.h"

@implementation HDProgrammer

- (id)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (id)initWithID:(int)id
{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)program {
    [self logMessage:[NSString stringWithFormat:@"%@ is a programmer and is programing!", self.firstName]];
}

@end
