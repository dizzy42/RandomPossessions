//
//  main.m
//  RandomPossessions
//
//  Created by tim_payton on 5/31/13.
//  Copyright (c) 2013 tim_payton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    BNRContainer *container = [BNRContainer init];
    
    for (int i = 0; i < 10; i++) {
        BNRItem *p = [BNRItem randomItem];
        [items addObject:p];
        [container addSubItem:*p];
    }
    
    for (BNRItem *item in items) {
        NSLog(@"%@", item);
    }
    
    NSLog(@"%@", container);
    
    items = nil;
}

