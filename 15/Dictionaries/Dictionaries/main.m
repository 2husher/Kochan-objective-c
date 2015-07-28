//
//  main.m
//  Dictionaries
//
//  Created by X on 28/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        [glossary setObject: @"A class defined so other classes can inherit from it"
                     forKey: @"abstract class"];
        [glossary setObject: @"To implement all the methods defined in a protocol"
                     forKey: @"adopt"];
        [glossary setObject: @"Storing an object for later use"
                     forKey: @"archiving"];
        
        NSLog(@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
        NSLog(@"adopt: %@", [glossary objectForKey: @"adopt"]);
        NSLog(@"archiving: %@", [glossary objectForKey: @"archiving"]);
    
        
        NSMutableDictionary *glossaryUpd = [NSMutableDictionary dictionary];
        
        glossaryUpd[@"abstract class"] = @"A class defined so other classes can inherit from it";
        glossaryUpd[@"adopt"] = @"To implement all the methods defined in a protocol";
        glossaryUpd[@"archiving"] = @"Storing an object for later use";
        
        NSLog(@"abstract class: %@", glossaryUpd[@"abstract class"]);
        NSLog(@"adopt: %@", glossaryUpd[@"adopt"]);
        NSLog(@"archiving: %@", glossaryUpd[@"archiving"]);
    }
    return 0;
}
