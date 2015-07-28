//
//  main.m
//  Strings
//
//  Created by X on 25/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"What is the Matrix?";
        NSLog(@"%@", str);
        
        NSString *str1 = @"The 1st string.";
        NSString *str2 = @"The 2nd string.";
        NSString *res;
        NSComparisonResult compareResult;
        
        NSLog(@"Str1 len is %lu", (unsigned long)[str1 length]);
        
        res = [NSString stringWithString: str1];
        NSLog(@"Copy: %@", res);
        
        str2 = [str1 stringByAppendingString: str2];
        NSLog(@"Concatination: %@", str2);
        
        if ([str1 isEqualToString: res])
        {
            NSLog(@"str1 is equal to res");
        }
        else
        {
            NSLog(@"str1 is not equal to res");
        }
        
        compareResult = [str1 compare: str2];
        
        if (compareResult == NSOrderedAscending)
        {
            NSLog(@"str1 < str2");
        }
        else if (compareResult == NSOrderedSame)
        {
            NSLog(@"str1 == str2");
        }
        else
        {
            NSLog(@"str1 > str2");
        }
        
        res = [str1 uppercaseString];
        NSLog(@"uppercase: %s", [res UTF8String]);
        
        res = [str1 lowercaseString];
        NSLog(@"lowercase: %@", res);
        
        NSLog(@"original string: %@", str1);
        
        
        
        
    }
    return 0;
}
