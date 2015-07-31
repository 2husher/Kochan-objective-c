//
//  main.m
//  16-2-Data
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *fm;
        NSData        *fileData;
        
        fm = [NSFileManager defaultManager];
        
        NSLog(@"pwd: %@", [fm currentDirectoryPath]);
        
        fileData = [fm contentsAtPath: @"newfile"];
        
        if (fileData == nil) {
            NSLog(@"File read failed!");
            return 1;
        }
        
        if ([fm createFileAtPath: @"newfile2"
                        contents: fileData
                      attributes: NULL] == NO) {
            NSLog(@"Can't create the copy");
        }
        
        NSLog(@"File copy was successful");
    
    }
    return 0;
}
