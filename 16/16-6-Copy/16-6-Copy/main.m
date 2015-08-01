//
//  main.m
//  16-6-Copy
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *fm;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray       *args = [proc arguments];
        NSString      *source, *dest;
        BOOL          isDir;
        
        fm = [NSFileManager defaultManager];
        
        NSUInteger argsCount = [args count];
        if (argsCount < 3) {
            NSLog(@"Usage: %@ scr1 src2 ... srcN dest", [proc processName]);
            return 1;
        }
        
        dest   = [args lastObject];
        
        [fm fileExistsAtPath: dest isDirectory: &isDir];
        
        if (isDir == NO && argsCount > 3) {
            NSLog(@"Destination must be the directory for copying %lu objects", argsCount - 2);
            return 2;
        }
        
        for (int i = 1; i < argsCount - 1; ++i) {
            source = args[i];
            if ([fm isReadableFileAtPath: source] == NO) {
                NSLog(@"Can't read %@", source);
                return 3;
            }
            
            if (isDir == YES) {
                dest = [[args lastObject] stringByAppendingPathComponent: [source lastPathComponent]];
            }
            [fm removeItemAtPath: dest error: NULL];

            if ([fm copyItemAtPath: source toPath: dest error: NULL] == NO) {
                NSLog(@"Copy of %@ object failed!", source);
                return 3;
            }
            
            NSLog(@"Copy of %@ to %@ succeed!", source, dest);
        }
    }
    return 0;
}
