//
//  main.m
//  Numbers
//
//  Created by X on 25/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSNumber *myNumber, *intNumber, *floatNumber;
        NSInteger myInt;
        
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);
        
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = [NSNumber numberWithChar: 'A'];
        NSLog(@"%c", [myNumber charValue]);
        
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%g", [myNumber doubleValue]);
        
        NSLog(@"%li", (long)[myNumber integerValue]);
        
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"first num is less than second");
        
        NSNumber * newNumber = [[NSNumber alloc] initWithInt: 50];
        NSLog(@"%@", newNumber);
   //     myNumber = [newNumber initWithInt: 100];
   //     NSLog(@"%@", myNumber);
        
        intNumber = @234;
        myInt = [intNumber integerValue];
        NSLog(@"%li", myInt);
        
        myNumber = @'B';
        NSLog(@"%c", [myNumber charValue]);
        
        floatNumber = @123.5f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        myNumber = @0xabcdef;
        NSLog(@"%lx", [myNumber longValue]);
        
    }
    return 0;
}
