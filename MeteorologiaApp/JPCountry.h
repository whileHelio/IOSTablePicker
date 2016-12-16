//
//  JPCountry.h
//  MeteorologiaApp
//
//  Created by Admin on 02/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@import Realm;

@interface JPCountry : RLMObject

@property (nonatomic, strong) NSString* region;
@property (nonatomic, strong) NSString* country;
@property (nonatomic, strong) NSString* capital;
@property (nonatomic, strong) NSString* nativeName;
@property (nonatomic) double lat;
@property (nonatomic) double lng;
@property (nonatomic) NSInteger population;

-(instancetype)initWithDictionary:(NSDictionary*)xpto;
@end
