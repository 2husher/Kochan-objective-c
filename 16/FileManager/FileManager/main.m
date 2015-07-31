//
//  main.m
//  FileManager
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSString *filename = @"testfile",
                 *newfile  = @"newfile",
                 *newfile2 = @"newfile2";
        NSFileManager *fm;
        NSDictionary *attr;
        
        fm = [NSFileManager defaultManager];
        
        NSLog(@"pwd %@", [fm currentDirectoryPath]);
        
        if ([fm fileExistsAtPath: filename] == NO) {
            NSLog(@"File does not exist!");
            return 1;
        }
        if ([fm fileExistsAtPath: newfile] == YES) {
            if ([fm removeItemAtPath: newfile
                               error: NULL] == NO) {
                NSLog(@"Remove 1 failed!");
                return 11;
            }
        }
        if ([fm fileExistsAtPath: newfile2] == YES) {
            if ([fm removeItemAtPath: newfile2
                               error: NULL] == NO) {
                NSLog(@"Remove 2 failed!");
                return 12;
            }
        }
        
        if ([fm copyItemAtPath: filename
                        toPath: newfile
                         error: NULL] == NO) {
            NSLog(@"Copying failed!");
            return 2;
        }
        
        if ([fm contentsEqualAtPath: filename
                            andPath: newfile] == NO) {
            NSLog(@"files are not equal");
            return 3;
        }
            
        if ([fm moveItemAtPath: newfile
                        toPath: newfile2
                         error: NULL] == NO) {
            NSLog(@"Rename File Failed!");
            return 4;
        }
        
        if ((attr = [fm attributesOfItemAtPath: newfile2
                                         error: NULL]) == nil) {
            NSLog(@"Failed to get attributes of file");
            return 5;
        }
        
        NSArray *keys = [attr allKeys];
        for (id key in keys) {
            NSLog(@"%@: %@", key, [attr objectForKey: key]);
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey: NSFileSize] unsignedLongLongValue]);
        
        NSLog(@"All operations were successfull.");
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: newfile2
                                               encoding: NSUTF8StringEncoding
                                                  error: NULL]);
    }
    return 0;
}
