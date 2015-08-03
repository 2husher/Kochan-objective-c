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
- (double) convertToNum;

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

- (double)convertToNum
{
    if (denominator != 0) {
        return (double) numerator/denominator;
    } else {
        return NAN;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Fraction *fraction1 = [[Fraction alloc] init];
        Fraction *fraction2 = [[Fraction alloc] init];
        
        [fraction1 setNumerator: 1];
        [fraction1 setDenominator: 4];
        
        [fraction1 print];
        NSLog(@" = ");
        NSLog(@"%g", [fraction1 convertToNum]);
        
        [fraction2 print];
        NSLog(@" = ");
        NSLog(@"%g", [fraction2 convertToNum]);
        
    }
    return 0;
}















