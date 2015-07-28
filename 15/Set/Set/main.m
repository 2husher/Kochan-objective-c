//
//  main.m
//  Set
//
//  Created by X on 28/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (Printing)
- (void) print;
@end

@implementation NSSet (Printing)

- (void)print
{
    printf("{");
    
    for (NSNumber *element in self) {
        printf(" %li ", (long)[element integerValue]);
    }
    
    printf("} \n");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableSet *set1 = [NSMutableSet setWithObjects:
                              @1, @3, @5, @10, nil];
        NSSet *set2 = [NSSet setWithObjects:
                       @-5, @100, @3, @5, nil];
        NSSet *set3 = [NSSet setWithObjects:
                       @12, @200, @3, nil];
        
        NSLog(@"set1:");
        [set1 print];
        
        NSLog(@"set2:");
        [set2 print];
        
        if ([set1 isEqualToSet: set2]) {
            NSLog(@"set1 is equal to set2");
        } else {
            NSLog(@"set1 is not equal to set2");
        }
        
        if ([set1 containsObject: @10]) {
            NSLog(@"set1 contains 10");
        } else {
            NSLog(@"set1 does not contain 10");
        }
        
        if ([set2 containsObject: @10]) {
            NSLog(@"set2 contains 10");
        } else {
            NSLog(@"set2 does not contain 10");
        }
        
        [set1 addObject: @7];
        [set1 removeObject: @10];
        NSLog(@"set1 after adding 7 and removing 10");
        [set1 print];
        
        [set1 intersectSet: set2];
        NSLog(@"set1 intersect set2");
        [set1 print];
        
        [set1 unionSet: set3];
        NSLog(@"set1 union set3");
        [set1 print];
        
    }
    return 0;
}








