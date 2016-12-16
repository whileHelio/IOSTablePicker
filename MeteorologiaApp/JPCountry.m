//
//  JPCountry.m
//  MeteorologiaApp
//
//  Created by Admin on 02/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "JPCountry.h"

@implementation JPCountry



-(instancetype)initWithDictionary:(NSDictionary*)xpto{
    

    if (self = [super init]) {
        self.region = [xpto objectForKey:@"region"];
        self.country = [xpto objectForKey:@"name"];
        self.capital = [xpto objectForKey:@"capital"];
        self.nativeName = [xpto objectForKey:@"nativeName"];
        self.population = [[xpto objectForKey:@"population"] integerValue];
        
        NSArray* tmp = [xpto objectForKey:@"latlng"];
        
        if (tmp.count == 2 ) {
            self.lat = [[tmp objectAtIndex:0] doubleValue];
            self.lng = [[tmp objectAtIndex:1] doubleValue];
        }
        
    }

    return self;
}


@end
