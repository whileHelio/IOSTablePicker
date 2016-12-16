//
//  TableViewController.m
//  exeumagosto
//
//  Created by Helio Carvalho on 01/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property NSDictionary *justCourseDetails;
@property NSArray *justCourseNames;
@property NSArray *justCoursesSub;

@property NSDictionary *webCourseDetails;
@property NSArray *webCourseNames;
@property NSArray *webCourseSub;
@end

@implementation TableViewController

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section==0){
       return self.justCourseDetails.count;
    }else{
        return self.webCourseDetails.count;
    }
    }
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section==0){
        return @"Course Names";
    }else{
        return @"Web Course Names";
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    UIImage *image=[UIImage imageNamed:@"demoCellImage"];
    [cell.imageView setImage:image];

    if(indexPath.section==0){
        cell.textLabel.text=self.justCourseNames[indexPath.row];
        cell.detailTextLabel.text=self.justCoursesSub[indexPath.row];
        
    }else{
        cell.textLabel.text=self.webCourseNames[indexPath.row];
        cell.detailTextLabel.text=self.webCourseSub[indexPath.row];
        
    }
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url=[[NSBundle mainBundle]URLForResource:@"courses" withExtension:@"plist"];
    self.justCourseDetails=[NSDictionary dictionaryWithContentsOfURL:url];// adicionar url dentro do dicionario
    self.justCourseNames=self.justCourseDetails.allKeys;
    self.justCoursesSub=self.justCourseDetails.allValues;
    
    NSURL *webUrl=[[NSBundle mainBundle] URLForResource:@"courses_web" withExtension:@"plist"];
    self.webCourseDetails=[NSDictionary dictionaryWithContentsOfURL:webUrl];
    self.webCourseNames=self.webCourseDetails.allKeys;
    self.webCourseSub=self.webCourseDetails.allValues;
    
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
