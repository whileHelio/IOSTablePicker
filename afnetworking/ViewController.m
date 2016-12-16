//
//  ViewController.m
//  afnetworking
//
//  Created by Helio Carvalho on 20/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSDictionary* dict;
@property NSArray* arr;
@property NSArray* arr1;
@property NSArray* arr2;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text=self.arr[indexPath.row];
    cell.detailTextLabel.text=[NSString stringWithFormat:@"Population: %@",[self.arr1[indexPath.row] stringValue] ];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSString *urlString=@"https://restcountries.eu/rest/v1/all";
    NSURL *urlItem=[NSURL URLWithString:urlString];
    NSData *date=[NSData dataWithContentsOfURL:urlItem];
    self.dict=[NSJSONSerialization JSONObjectWithData:date options:0 error:nil];
    
    
       for (NSDictionary *boda in self.dict) {
        NSLog(@"%@",boda);
    }
    self.arr=[self.dict valueForKey:@"name"];
    self.arr1=[self.dict valueForKey:@"population"];
    self.arr2=[self.dict valueForKey:@"region"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailViewController* detail=[segue destinationViewController];
    NSIndexPath *path=[self.tableView indexPathForSelectedRow];
    [detail setInfoString:self.arr2[path.row]];

}

@end
