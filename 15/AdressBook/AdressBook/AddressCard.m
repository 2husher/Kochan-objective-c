//
//  AddressCard.m
//  AdressBook
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
//{
//    NSString *name;
//    NSString *email;
//}

@synthesize name, email;

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail
{
    self.name  = theName;    // difference to name = theName
    self.email = theEmail;
}

- (NSComparisonResult)compareNames:(id)element
{
    return [name compare: [element name]];
}

//- (void)setName:(NSString *)theName
//{
//    name = [NSString stringWithString: theName];
//}
//
//- (void)setEmail:(NSString *)theEmail
//{
//    email = [NSString stringWithString: theEmail];
//}
//
//- (NSString *)name
//{
//    return name;
//}
//
//- (NSString *)email
//{
//    return email;
//}

- (void)print
{
    NSLog (@"===================================");
    NSLog (@"|                                 |");
    NSLog (@"| %-31s |", [name UTF8String]);
    NSLog (@"| %-31s |", [email UTF8String]);
    NSLog (@"|                                 |");
    NSLog (@"|                                 |");
    NSLog (@"|                                 |");
    NSLog (@"|         O             O         |");
    NSLog (@"===================================");
}

@end
