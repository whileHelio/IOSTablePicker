//
//  JPViewController.m
//  MeteorologiaApp
//
//  Created by Admin on 02/05/16.
//  Copyright © 2016 Admin. All rights reserved.s
//

#import "JPViewController.h"

@import MapKit;
@import CoreLocation;
#import "JPCountry.h"

@interface JPViewController ()<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapweather;
@property (nonatomic,weak) CLLocationManager* manager;


@end

@implementation JPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.manager = [CLLocationManager new];
    [self.manager requestWhenInUseAuthorization];
    
    RLMResults* chek = [JPCountry allObjects];
    
    for (JPCountry* pais in chek) {
        MKPointAnnotation* pin = [MKPointAnnotation new];
        pin.title = pais.country;
        pin.coordinate = CLLocationCoordinate2DMake(pais.lat, pais.lng);
        [self.mapweather addAnnotation:pin];
        
        
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
