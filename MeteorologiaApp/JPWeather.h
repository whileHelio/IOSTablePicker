//
//  JPWeather.h
//  MeteorologiaApp
//
//  Created by Admin on 06/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPWeather : NSObject

@property (nonatomic, strong) NSString* desc;
@property (nonatomic) double vento;
@property (nonatomic) double tempo;
@property (nonatomic) double tempo_min;
@property (nonatomic) double tempo_max;

-(instancetype)initWithDictionary:(NSDictionary*)xpto1;




@end
