//
//  PickerViewController.m
//  exeumagosto
//
//  Created by Helio Carvalho on 01/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()
@property NSArray* moods;
@end

@implementation PickerViewController


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.moods count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.moods[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    UIColor* color;
    
    switch (row) {
        case 0:case 2:case 4:
            color=[UIColor redColor];
            break;
        case 1:case 3:case 6:
            color=[UIColor greenColor];
            break;
        case 5:case 7:
            color=[UIColor blueColor];
            break;
        default:
            [UIColor brownColor];
            break;
    }
    [self.view setBackgroundColor:color];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.moods=@[@"Happy",@"Sad",@"Focused",@"Energized",@"Tired",@"Lazy",@"Anger",@"Calm"];
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
