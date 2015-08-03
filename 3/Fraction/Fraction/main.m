//
//  main.m
//  Fraction
//
//  Created by X on 02/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        
        [a print]; NSLog (@" +"); [b print]; NSLog (@"-----");
        result = [a add: b];
        [result print]; NSLog (@"\n");
        
        [a print]; NSLog (@" -"); [b print]; NSLog (@"-----");
        result = [a sub: b];
        [result print]; NSLog (@"\n");
        
        [a print]; NSLog (@" *"); [b print]; NSLog (@"-----");
        result = [a mul: b];
        [result print]; NSLog (@"\n");
        
        [a print]; NSLog (@" /"); [b print]; NSLog (@"-----");
        result = [a div: b];
        [result print]; NSLog (@"\n");
        
        NSLog(@"inverted"); [b print]; NSLog(@"-----");
        result = [b invert];
        [result print]; NSLog(@"\n");
        
    }
    return 0;
}















