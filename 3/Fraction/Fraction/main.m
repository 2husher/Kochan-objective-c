//
//  main.m
//  Fraction
//
//  Created by X on 02/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

- (void) print;
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
- (int) numenator;
- (int) denominator;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (void)setNumerator:(int)n
{
    numerator = n;
}

- (void)setDenominator:(int)d
{
    denominator = d;
}

- (int)numenator
{
    return numerator;
}

- (int)denominator
{
    return denominator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Fraction *fraction1 = [[Fraction alloc] init];
        Fraction *fraction2 = [[Fraction alloc] init];
        
        [fraction1 setNumerator: 3];
        [fraction2 setDenominator: 7];
        
        [fraction2 setNumerator: 2];
        [fraction2 setDenominator: 9];
        
        NSLog(@"1st fraction is: %i/%i", [fraction1 numenator], [fraction1 denominator]);
        
        NSLog(@"2nd fraction is:");
        [fraction2 print];
        
    }
    return 0;
}















