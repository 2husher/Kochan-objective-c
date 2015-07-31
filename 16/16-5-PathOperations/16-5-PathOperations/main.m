//
//  main.m
//  16-5-PathOperations
//
//  Created by X on 31/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSFileManager *fm;
        NSString *tempdir, *path, *fullpath, *extension, *homeDirectory;
        NSString *fName = @"path.m";
        NSArray *components;
        
        fm = [NSFileManager defaultManager];
        tempdir = NSTemporaryDirectory();
        
        NSLog(@"Temporary directory is %@", tempdir);
        
        path = [fm currentDirectoryPath];
        NSLog(@"Base path is %@", [path lastPathComponent]);
        
        fullpath = [path stringByAppendingPathComponent: fName];
        NSLog(@"Full path to %@ is %@", fName, fullpath);
        
        extension = [fullpath pathExtension];
        NSLog(@"extension of %@ is %@", fullpath, extension);
        
        homeDirectory = NSHomeDirectory();
        NSLog(@"Home dir is %@", homeDirectory);
        
        components = [homeDirectory pathComponents];
        for (path in components) {
            NSLog(@"%@", path);
        }
        
    }
    return 0;
}
