//
//  main.m
//  MutableStrings
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSString *str = @"Nonmutable string";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        mstr = [NSMutableString stringWithString: str];
        NSLog(@"%@", mstr);
        
        [mstr insertString: @" mutable" atIndex: 10];
        NSLog(@"%@", mstr);
        
        [mstr insertString: @" To end" atIndex: [mstr length]];
        NSLog(@"%@", mstr);
        
        [mstr appendString: @" And append"];
        NSLog(@"%@", mstr);
        
        [mstr deleteCharactersInRange: NSMakeRange(15, 10)];
        NSLog(@"%@", mstr);
        
        substr = [mstr rangeOfString: @" To end And"];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange: substr];
        }
        NSLog(@"%@", mstr);
        
        [mstr setString: @"direct string"];
        NSLog(@"%@", mstr);
        
        [mstr replaceCharactersInRange: NSMakeRange(4, 5)
                            withString: @"Yohyohyoh"];
        NSLog(@"%@", mstr);
        
        search  = @"Yohyohy";
        replace = @"ct sv";
        substr = [mstr rangeOfString: search];
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange: substr
                                withString: replace];
            NSLog(@"%@", mstr);
        } else {
            NSLog(@"Not found");
        }

        search = @"r";
        replace = @"W";
        substr = [mstr rangeOfString: search];
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange: substr
                                withString: replace];
            substr = [mstr rangeOfString: search];
        }
        NSLog(@"%@", mstr);
        
        search = @"i";
        replace = @"9";
        [mstr replaceOccurrencesOfString: search
                              withString: replace
                                 options: nil
                                   range: NSMakeRange(0, [mstr length])];
        NSLog(@"%@", mstr);
    }
    return 0;
}
