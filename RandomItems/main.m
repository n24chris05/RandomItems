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
       
        
        for (int i=0; i < 10; i++){
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        
        
        for (BNRItem *item in items){
            NSLog (@"%@",item);
        }
        items = nil;
    }
    return 0;
}

