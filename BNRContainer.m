//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by tim_payton on 6/2/13.
//  Copyright (c) 2013 tim_payton. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (void)addSubItem:(id *)item
{
    [subitems addObject:item];
}

- (NSString *)description
{
    int totalValueInDollars = valueInDollars;
    for (BNRItem *subitem in subitems)
    {
        totalValueInDollars += [subitem valueInDollars];
    }
    
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                   itemName,
                                   serialNumber,
                                   totalValueInDollars,
                                   dateCreated];
    return descriptionString;
}
@end
