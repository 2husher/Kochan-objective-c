//
//  main.m
//  16-4-Enumerate
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSFileManager *fm;
        NSString *path;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        fm = [NSFileManager defaultManager];

        path = [fm currentDirectoryPath];
        
        //path = @"/Users/X/Downloads";
        
        dirEnum = [fm enumeratorAtPath: path];
        
        NSLog(@"Contents of %@", path);
        
        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
        }
        
        dirArray = [fm contentsOfDirectoryAtPath: [fm currentDirectoryPath]
                                           error: NULL];
        NSLog(@"contentsOfDirectoryAtPath:error:");
        
        for (path in dirArray) {
            NSLog(@"%@", path);
        }
        
    }
    return 0;
}
