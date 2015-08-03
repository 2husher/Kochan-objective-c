//
//  main.m
//  Calculator
//
//  Created by X on 02/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

-(double) changeSign; // change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared;   // accumulator squared

-(double) memoryClear;                    // clear memory
-(double) memoryStore;                    // set memory to accumulator
-(double) memoryRecall;                   // set accumulator to memory
-(double) memoryAdd: (double) value;      // add value into memory
-(double) memorySubtract: (double) value; // subtract value from memory

@end

@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(double) add: (double) value
{
    accumulator += value;
    return accumulator;
}

-(double) subtract: (double) value
{
    accumulator -= value;
    return accumulator;
}

-(double) multiply: (double) value
{
    accumulator *= value;
    return accumulator;
}

-(double) divide: (double) value
{
    accumulator /= value;
    return accumulator;
}

- (double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

-(double) reciprocal
{
    accumulator = 1/accumulator;
    return accumulator;
}

-(double) xSquared
{
    accumulator *= accumulator;
    return accumulator;
}

- (double) memoryClear
{
    memory = 0;
    return memory;
}

- (double) memoryStore
{
    accumulator = memory;
    return accumulator;
}

- (double) memoryRecall
{
    memory = accumulator;
    return memory;
}

-(double) memoryAdd: (double) value
{
    memory += value;
    return memory;
}

-(double) memorySubtract: (double) value
{
    memory -= value;
    return memory;
}

@end

int main (int argc, char * argv[])
{
    @autoreleasepool
    {
        double value1, value2;
        char operator;
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        
        if ( operator == '+' )
            [deskCalc add: value2];
        else if ( operator == '-' )
            [deskCalc subtract: value2];
        else if ( operator == '*' )
            [deskCalc multiply: value2];
        else if ( operator == '/' )
            [deskCalc divide: value2];
        
        NSLog (@"%.2f", [deskCalc accumulator]);
        
        
//        [deskCalc setAccumulator: 100.0];
//        
//        NSLog (@"Added: %g", [deskCalc add: 200.]);
//        NSLog (@"Divided: %g", [deskCalc divide: 15.0]);
//        NSLog (@"Substracted: %g", [deskCalc subtract: 10.0]);
//        NSLog (@"Multiplied: %g", [deskCalc multiply: 5]);
//        
//        NSLog (@"Changed sign: %g", [deskCalc changeSign]);
//        NSLog (@"Reciprocaled: %g", [deskCalc reciprocal]);
//        NSLog (@"XSquarted: %g", [deskCalc xSquared]);
//        
//        NSLog (@"Memory Recalled: %g", [deskCalc memoryRecall]);
//        NSLog (@"Memory Added: %g", [deskCalc memoryAdd: 3]);
//        NSLog (@"Memory Substracted: %g", [deskCalc memorySubtract: 7]);
//        NSLog (@"Memory Stored: %g", [deskCalc memoryStore]);
//        NSLog (@"Memory Cleared: %g", [deskCalc memoryClear]);
//
//        NSLog (@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}








