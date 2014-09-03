//
//  NSString+NSString_ConvertWhiteSpace.m
//  LearnObjectiveC
//
//  Created by Ryan Hoo on 9/3/14.
//  Copyright (c) 2014 HybridSquad. All rights reserved.
//

#import "NSString+NSString_ConvertWhiteSpace.h"

@implementation NSString (NSString_ConvertWhiteSpace)

- (NSString *) convertWhiteSpace {
    return [self stringByReplacingOccurrencesOfString: @" " withString: @"_"];
}

@end
