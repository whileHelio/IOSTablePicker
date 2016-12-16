//
//  JPListViewController.m
//  MeteorologiaApp
//
//  Created by Admin on 04/05/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "JPListViewController.h"
#import "JPCountry.h"
#import "JPDetailsViewController.h"

@interface JPListViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *countryList;
@property (nonatomic,strong) RLMResults* countrysResume;

@end

@implementation JPListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.countrysResume = [JPCountry allObjects];
    
    
    
    self.countryList.dataSource = self;
    self.countryList.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.countrysResume count];
   

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JPCountry* country1 = [self.countrysResume objectAtIndex:indexPath.row];
    NSString* identifier =  @"cell-basic";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    cell.textLabel.text = country1.country;
    

    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"segueList" sender:nil];


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"segueList"]) {
        NSInteger listRow = [self.countryList indexPathForSelectedRow].row;
        JPCountry* country1 = [self.countrysResume objectAtIndex:listRow];
        JPDetailsViewController* sg = segue.destinationViewController;
        sg.segueContry = country1;
        
    }

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
