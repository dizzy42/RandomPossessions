//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by tim_payton on 6/2/13.
//  Copyright (c) 2013 tim_payton. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subitems;
}

- (void)addSubItem:(id *)item;

@end
