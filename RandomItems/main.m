//
//  main.m
//  RandomItems
//
//  Created by Chris Arquelada on 4/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create a mutable array ojbject, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        //Send the message addObject: to the NSMutableArray pointed to
        //by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //Send another message, insertObject:atIndex: , to the ssame array object
        [items insertObject:@"Zero" atIndex:0];
        
        //For every iteme in the item array ...
        for (NSString *item in items){
            //Log the description of item
            NSLog (@"%@",item);
        }
        
        //This create an NSstring, "Red Sofa" and gives it to the BNRItem

        
        BNRItem *item = [[BNRItem alloc]init];
        
        item.itemName = @"Red Sofa";
        //This create an NSString , "A1B2C" and gives it to the BNRItem
       item.serialNumber=@"A1B2C";
        
        //This sends the value 100 to be used as the valueInDollars of this BNRItem
        //[item setValueInDollars:100];
        item.valueInDollars = 100;
        
        NSLog (@"%@ %@ %@ %d",[item itemName],[item dateCreated],
               [item serialNumber],[item valueInDollars]);
        
        
        //Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

