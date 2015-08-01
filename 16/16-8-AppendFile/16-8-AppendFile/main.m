//
//  main.m
//  16-8-AppendFile
//
//  Created by X on 01/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"fileA"];
        if (inFile == nil) {
            NSLog(@"Open of fileA failed!");
            return 1;
        }
        
        outFile = [NSFileHandle fileHandleForWritingAtPath: @"fileB"];
        if (outFile == nil) {
            NSLog(@"Open of fileB failed!");
            return 2;
        }
        
        [outFile seekToEndOfFile];
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData: buffer];
        
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"fileB"
                                               encoding: NSUTF8StringEncoding
                                                  error: NULL]);
        
        NSURL *myURL = [NSURL URLWithString: @"http://classroomM.com"];
        NSString *myHomePage = [NSString stringWithContentsOfURL: myURL
                                                        encoding:   NSASCIIStringEncoding
                                                           error: NULL];
        NSLog(@"%@", myHomePage);
        
    }
    return 0;
}
