//
//  JPWeather.m
//  MeteorologiaApp
//
//  Created by Admin on 06/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "JPWeather.h"

@implementation JPWeather


-(instancetype)initWithDictionary:(NSDictionary*)xpto1{
  
    if (self = [super init]) {
        self.tempo = [[xpto1 valueForKeyPath:@"main.temp"]doubleValue];
        self.tempo_max = [[xpto1 valueForKeyPath:@"main.temp_max"]doubleValue];
        self.tempo_min = [[xpto1 valueForKeyPath:@"main.temp_min"]doubleValue];
        self.vento = [[xpto1 valueForKeyPath:@"wind.speed"]doubleValue];
        NSArray* tmp1=[xpto1 objectForKey:@"weather"];
        
        if (tmp1.count > 0) {
            self.desc =[tmp1[0] objectForKey:@"description"];
        }
     
    }


    return self;
}


@end
