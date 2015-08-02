//
//  main.m
//  Complex
//
//  Created by X on 02/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print; // display as a + bi
-(double) real;
-(double) imaginary;

@end

@implementation Complex
{
    double real;
    double imaginary;
}

-(void)setReal:(double)a
{
    real = a;
}

-(void)setImaginary:(double)b
{
    imaginary = b;
}

-(void)print
{
    NSLog(@"%f + %fi", self.real, self.imaginary);
}

-(double)real
{
    return real;
}

-(double)imaginary
{
    return imaginary;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Complex *compl = [[Complex alloc] init];
        
        [compl setReal: 10.2];
        [compl setImaginary: -4.8];
        
        NSLog(@"Complex is:");
        [compl print];
    
    }
    return 0;
}
