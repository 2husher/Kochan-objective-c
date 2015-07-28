//
//  main.m
//  AdressBook
//
//  Created by X on 26/07/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSString *aName  = @"Alex Izotov";
        NSString *aEmail = @"ai@gmail.com";
        NSString *bName  = @"Da Vinci";
        NSString *bEmail = @"mona.liza@yahoo.com";
        NSString *cName  = @"Julia Kochan";
        NSString *cEmail = @"jewls337@axlc.com";
        NSString *dName  = @"Tony Iannino";
        NSString *dEmail = @"tony.iannino@techfitness.com";
        NSString *eName  = @"Stephen Kochan";
        NSString *eEmail = @"steve@classroomM.com";
        NSString *fName  = @"Jamie Baker";
        NSString *fEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];
        AddressCard *card6 = [[AddressCard alloc] init];
        
        AddressBook *book = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        AddressCard *card;
        
        NSLog(@"Entries in book after creation: %li", [book entries]);
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        [card5 setName: eName andEmail: eEmail];
        [card6 setName: fName andEmail: fEmail];
        
        [book addCard: card1];
        [book addCard: card2];
        [book addCard: card3];
        [book addCard: card4];
        [book addCard: card5];
        [book addCard: card6];
        
        NSLog(@"Entries in book after adding cards: %li", [book entries]);
        
        NSLog(@"Partial match: chan");
        card = [book lookup: @"chan"];
        if (card) {
            [card print];
        } else {
            NSLog(@"Not found");
        }
        
        [book removeCard: card];
        
        NSLog(@"Victor Frankl");
        card = [book lookup: @"victor frankl"];
        if (card) {
            [card print];
        } else {
            NSLog(@"Not found");
        }
        
        NSLog(@"Entries in book after adding cards: %li", [book entries]);
        [book list];
        
        [book sort];
        [book list];
    }
    return 0;
}
