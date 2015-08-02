//
//  main.m
//  Rectangle
//
//  Created by X on 02/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle
{
    int width;
    int height;
}

-(void)setWidth:(int)w
{
    width = w;
}

-(void)setHeight:(int)h
{
    height = h;
}

- (int)width
{
    return width;
}

-(int)height
{
    return height;
}

-(int)area
{
    return self.width * self.height;
}

-(int)perimeter
{
    return (self.width + self.height) * 2;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *rect = [[Rectangle alloc] init];
        
        [rect setWidth: 20];
        [rect setHeight: 6];
        
        NSLog(@"Rectangle area is %i", [rect area]);
        
        NSLog(@"Rectangle perimeter is %i", [rect perimeter]);
        
    }
    return 0;
}









