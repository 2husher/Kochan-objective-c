//
//  AddressBook.m
//  AdressBook
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book     = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithName: @"NoName"];
}

- (void)addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

- (void)removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo: theCard];
}

- (NSUInteger)entries
{
    return [book count];
}

- (void)list
{
    NSLog(@"======= Contents of: %@ =======", bookName);
    for (AddressCard *card in book) {
        NSLog(@" %-20s %-31s", [card.name UTF8String], [card.email UTF8String]);
    }
    NSLog(@"======================================================");
}

- (void)sort
{
   // [book sortUsingSelector: @selector(compareNames:)];
    [book sortUsingComparator:
       ^(id obj1, id obj2) {
         return [[obj1 name] compare: [obj2 name]];
       }];
}

- (AddressCard *)lookup:(NSString *)theName
{
    for (AddressCard *theCard in book) {
        NSRange searchRange = [theCard.name rangeOfString: theName
                                                   options: NSCaseInsensitiveSearch];
        if ( NO == NSEqualRanges(searchRange, NSMakeRange(NSNotFound, 0)) ) {
            return theCard;
        }
    }
    return nil;
}

- (NSArray *) lookupAll: (NSString *) theName {
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
        ^(id obj, NSUInteger idx, BOOL *stop)
        {
            NSRange searchRange = [[obj name] rangeOfString: theName
                                                    options: NSCaseInsensitiveSearch];
            if (NO == NSEqualRanges(searchRange, NSMakeRange(NSNotFound, 0)))
                return YES; // found a match, keep going else
            else
                return NO;
        } ];
    NSArray *matchingNames = [book objectsAtIndexes: result];
    
    return matchingNames;
}

- (BOOL)removeName:(NSString *)theName
{
    NSArray *matchingNames = [self lookupAll: theName];
    if ([matchingNames count] == 1){
        [self removeCard: [matchingNames firstObject]];
        return YES;
    } else {
        return NO;
    }
}

@end
