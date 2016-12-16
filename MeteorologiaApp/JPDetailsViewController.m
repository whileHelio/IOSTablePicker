//
//  JPDetailsViewController.m
//  MeteorologiaApp
//
//  Created by Admin on 06/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "JPDetailsViewController.h"
#import "JPWeather.h"



@interface JPDetailsViewController ()
@property (strong, nonatomic) IBOutlet UIView *weatherDetail;

@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxLabel;
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@property (weak, nonatomic) IBOutlet UILabel *ventoLabel;
@property (weak, nonatomic) IBOutlet UILabel *descrLabel;


@end

@implementation JPDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSString* weatherString = @"http://api.openweathermap.org/data/2.5/weather?lat=%f&lon=%f&units=metric&lang=pt&APPID=fabfdefad7b74a4bb69273974b2dfef1";
    NSURL* url1 = [NSURL URLWithString:[NSString stringWithFormat:weatherString,self.segueContry.lat,self.segueContry.lng]];
    
    NSURLSession* session1 = [NSURLSession sharedSession];
    NSURLSessionTask* task1 = [session1 dataTaskWithURL:url1 completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary* items1 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        
        JPWeather* dtl = [[JPWeather alloc]initWithDictionary:items1];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
        self.weatherLabel.text =[NSString stringWithFormat:@"%f",dtl.tempo];
        self.maxLabel.text =[NSString stringWithFormat:@"%f",dtl.tempo_max];
        self.minLabel.text =[NSString stringWithFormat:@"%f",dtl.tempo_min];
        self.ventoLabel.text =[NSString stringWithFormat:@"%f",dtl.vento];
        self.descrLabel.text = dtl.desc;
        
        
        });

    }];
    
    [task1 resume];
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
