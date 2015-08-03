//
//  Fraction.m
//  Fraction
//
//  Created by X on 03/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

- (void) print
{
    NSLog(@"%li/%li", (long)_numerator, (long)_denominator);
}

- (double)convertToNum
{
    if (_denominator != 0) {
        return (double) _numerator/_denominator;
    } else {
        return NAN;
    }
}

-(void) setTo: (int) n over: (int) d
{
    _numerator   = n;
    _denominator = d;
}


- (void) reduce {
    NSInteger u = _numerator;
    NSInteger v = _denominator;
    NSInteger temp;
 
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    _numerator   /= u;
    _denominator /= u;
}

@end
