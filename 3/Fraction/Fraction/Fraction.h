//
//  Fraction.h
//  Fraction
//
//  Created by X on 03/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property NSInteger numerator;
@property NSInteger denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (void) reduce;

@end
