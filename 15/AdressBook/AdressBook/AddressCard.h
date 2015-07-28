//
//  AddressCard.h
//  AdressBook
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

- (void) setName:(NSString *)theName andEmail:(NSString *)theEmail;

- (NSComparisonResult) compareNames: (id) element;

//- (void) setName: (NSString *) theName;
//- (void) setEmail: (NSString *) theEmail;

//- (NSString *) name;
//- (NSString *) email;

- (void) print;

@end
