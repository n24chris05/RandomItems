//
//  main.m
//  RandomItems
//
//  Created by Chris Arquelada on 4/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

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
        
        
        //Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

