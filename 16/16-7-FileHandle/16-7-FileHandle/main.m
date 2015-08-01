//
//  main.m
//  16-7-FileHandle
//
//  Created by X on 01/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSFileHandle *inFile, *outFile;
        NSData       *buffer;
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        if (inFile == nil) {
            NSLog(@"Open inFile failed!");
            return 1;
        }
        
        [[NSFileManager defaultManager] createFileAtPath: @"testout"
                                                contents: nil
                                              attributes: nil];
        
        outFile = [NSFileHandle fileHandleForWritingAtPath: @"testout"];
        if (outFile == nil) {
            NSLog(@"Open outFile failed!");
            return 2;
        }
        
        [outFile truncateFileAtOffset: 0];
        
        buffer = [inFile readDataToEndOfFile];
        
        [outFile writeData: buffer];
        
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"testout"
                                               encoding: NSUTF8StringEncoding
                                                  error: NULL]);
    
    }
    return 0;
}
