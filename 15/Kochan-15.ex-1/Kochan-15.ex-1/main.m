//
//  main.m
//  Kochan-15.ex-1
//
//  Created by X on 28/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ElapsedDays)
-(unsigned long) elapsedDays: (NSDate *) theDate;
@end

@implementation NSDate (ElapsedDays)

- (unsigned long)elapsedDays:(NSDate *)theDate
{
    unsigned long elapsedSeconds = [self timeIntervalSinceDate: theDate];
    unsigned int secondsPerDay   = 60*60*24;
    return elapsedSeconds / secondsPerDay;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSDate *today = [NSDate date];
        unsigned long days = [today elapsedDays: [NSDate dateWithTimeIntervalSinceNow: -5000000]];
        NSLog(@"Elapsed %lu days", days);
        
    }
    return 0;
}
