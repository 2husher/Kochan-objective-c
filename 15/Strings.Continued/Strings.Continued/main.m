//
//  main.m
//  Strings.Continued
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSString *str = @"What is the Matrix?";
        NSString *res;
        NSRange subRange;
        
        res = [str substringToIndex: 5];
        NSLog(@"First 5 characters of str are: <%@>", res);
        
        res = [str substringFromIndex: 5];
        NSLog(@"Chars from 6: <%@>", res);
        
        res = [[str substringFromIndex: 12] substringToIndex: 7];
        NSLog(@"Chars from 12 till 19: <%@>", res);
        
        res = [str substringWithRange: NSMakeRange(12, 7)];
        NSLog(@"Again chars from 12 till 19: <%@>", res);
        
        subRange = [str rangeOfString: @"the Matrix"];
        NSLog(@"At index %lu with length %lu", subRange.location, subRange.length);
        
        subRange = [str rangeOfString: @"Knock-knock Neo"];
        if (subRange.location == NSNotFound) {
            NSLog(@"Substring is not found");
        } else {
            NSLog(@"At index %lu with length %lu", subRange.location, subRange.length);
        }
    
    }
    return 0;
}
