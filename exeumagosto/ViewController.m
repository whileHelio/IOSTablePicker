//
//  ViewController.m
//  exeumagosto
//
//  Created by Helio Carvalho on 01/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController
- (IBAction)day:(id)sender {
    NSString *title=@"Day";
    
    NSDate*chosen=[self.datePicker date];
    NSDateFormatter *dateFormat=[[NSDateFormatter alloc ]init];
    [dateFormat setDateFormat:@"EEEE"];
    NSString * message=[dateFormat stringFromDate:chosen];
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction*alertAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:alertAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier]isEqualToString:@"modalSegue"]){
        [[segue destinationViewController] setDelegate:self];
    }
 
}*/
@end
