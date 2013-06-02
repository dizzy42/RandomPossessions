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
    [subitems addObject:*item];
}

- (NSString *)description
{
    NSMutableString *subitemDescriptions;
    int totalValueInDollars = valueInDollars;
    for (BNRItem *subitem in subitems)
    {
        [subitemDescriptions appendString:[subitem description]];
        totalValueInDollars += [subitem valueInDollars];
    }
    
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@ \n %@",
                                   itemName,
                                   serialNumber,
                                   totalValueInDollars,
                                   dateCreated,
                                   subitemDescriptions];
    return descriptionString;
}
@end
