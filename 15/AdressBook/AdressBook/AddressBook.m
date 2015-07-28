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
        if ([theCard.name caseInsensitiveCompare: theName] == NSOrderedSame ) {
            return theCard;
        }
    }
    return nil;
}

@end
