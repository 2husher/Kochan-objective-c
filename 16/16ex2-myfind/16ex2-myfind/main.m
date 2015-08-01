//
//  main.m
//  16ex2-myfind
//
//  Created by X on 01/08/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *fm   = [NSFileManager defaultManager];
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray       *args = [proc arguments];
        NSDirectoryEnumerator *dirEnum;
        NSString      *folder, *file, *path, *nextFile;
        BOOL          isDir;
        
        NSUInteger argsCount = [args count];
        if (argsCount != 3) {
            NSLog(@"Usage: %@ folder file", [proc processName]);
            return 1;
        }
        
        folder = args[1];
        file   = args[2];
        
        [fm fileExistsAtPath: folder isDirectory: &isDir];
        if (isDir == NO) {
            NSLog(@"First parameter must be the directory");
            return 2;
        }
        
        dirEnum = [fm enumeratorAtPath: folder];
        while ((path = [dirEnum nextObject]) != nil) {
            nextFile = [path lastPathComponent];
            if ([file isEqualToString: nextFile]) {
                NSLog(@"%@", path);
                return 0;
            }
        }
        NSLog(@"%@ was not found in %@", file, folder);
    }
    return 0;
}
