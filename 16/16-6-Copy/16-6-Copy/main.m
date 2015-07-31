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
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ scr dest", [proc processName]);
            return 1;
        }
        
        source = args[1];
        dest   = args[2];
        
        if ([fm isReadableFileAtPath: source] == NO) {
            NSLog(@"Can't read %@", source);
            return 2;
        }
        
        [fm fileExistsAtPath: dest isDirectory: &isDir];
        
        if (isDir == YES) {
            dest = [dest stringByAppendingString: [source lastPathComponent]];
        }
        
        [fm removeItemAtPath: dest error: NULL];
        
        if ([fm copyItemAtPath: source toPath: dest error: NULL] == NO) {
            NSLog(@"Copy failed!");
            return 3;
        }
        
        NSLog(@"Copy of %@ to %@ succeed!", source, dest);
        
    }
    return 0;
}
