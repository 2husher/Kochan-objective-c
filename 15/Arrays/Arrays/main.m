//
//  main.m
//  Arrays
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *daysOfWeek = [NSArray arrayWithObjects: @"Sunday", @"Monday",
                               @"Tuesday", @"Wednesday", @"Thursday", @"Friday",
                               @"Saturday", nil];
        NSLog(@"Day    Name");
        NSLog(@"===    ====");
        
        for (int i = 0; i < 7; ++i)
        {
            NSLog(@" %2i     %@", i + 7, [daysOfWeek objectAtIndex: i]);
        }
        
        
        daysOfWeek = @[@"Sunday", @"Monday", @"Tuesday", @"Wednesday",
                        @"Thursday", @"Friday", @"Saturday"];
        NSLog(@"Day    Name");
        NSLog(@"===    ====");
        
        for (int i = 0; i < 7; ++i)
        {
            NSLog(@" %2i     %@", i + 7, daysOfWeek[i]);
        }
        
        
        NSMutableArray *marr = [NSMutableArray array];
        int            i;
        
        for (i = 0; i < 10; ++i) {
            marr[i] = @(i);
        }
        
        for (i = 0; i < 10; ++i) {
            NSLog(@"%i elem is: %@", i + 1, marr[i]);
        }
        
        NSLog(@"With single NSLog =======");
        NSLog(@"%@", marr);
    }
    return 0;
}
