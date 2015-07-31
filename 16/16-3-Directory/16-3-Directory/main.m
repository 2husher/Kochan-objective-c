//
//  main.m
//  16-3-Directory
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *dirName = @"testfile";
        NSString *path;
        NSFileManager *fm;
        
        fm = [NSFileManager defaultManager];
        
        path = [fm currentDirectoryPath];
        NSLog(@"pwd: %@", path);
        
        if ([fm createDirectoryAtPath: dirName
          withIntermediateDirectories: YES
                           attributes: nil
                                error: NULL] == NO) {
            NSLog(@"Couldn't create the directory");
            return 1;
        }
        
        if ([fm moveItemAtPath: dirName
                        toPath: @"newdir"
                         error: NULL] == NO) {
            NSLog(@"Couldn't rename the directory");
            return 2;
        }
        
        if ([fm changeCurrentDirectoryPath: @"newdir"] == NO) {
            NSLog(@"Couldn't change the current directory");
            return 3;
        }
        
        path = [fm currentDirectoryPath];
        NSLog(@"pwd: %@", path);
        
        NSLog(@"All operations were successful!");
        
    }
    return 0;
}
