//
//  TableViewController.m
//  PhotoViewer
//
//  Created by Helio Carvalho on 04/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController (){
    NSMutableArray * photos;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    photos=[[NSMutableArray alloc]init];
    
    Photo *pic=[[Photo alloc]init];
    
    pic.name=@"Emerald Bay";
    pic.fileName=@"emeraldbay";
    pic.notes=@"Emerald Bay, one of lake tahoe's most popular and photogenic locations";
    [photos addObject:pic];
    
    pic=[[Photo alloc]init];
    
    pic.name=@"JoshuaTree";
    pic.fileName=@"joshuatree";
    pic.notes=@"A Joshua tree in the Mojave desert";
    [photos addObject:pic];
    
    pic=[[Photo alloc]init];
    
    pic.name=@"Sunset in Ventura";
    pic.fileName=@"sunset";
    pic.notes=@"Romantic sunset at the beach";
    [photos addObject:pic];
    
    pic=[[Photo alloc]init];
    
    pic.name=@"Snowman at the lake tahoe";
    pic.fileName=@"snowman";
    pic.notes=@"Lake Tahoe gets 400 inches of snow every year";
    [photos addObject:pic];
    
    pic=[[Photo alloc]init];
    
    pic.name=@"Red Rock";
    pic.fileName=@"redrock";
    pic.notes=@"Spetacular formations of Rocks";
    [photos addObject:pic];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return photos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Photo *current=[photos objectAtIndex:indexPath.row];
    
    cell.textLabel.text=current.name;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DisplayViewController *pvc=[segue destinationViewController];
    NSIndexPath * path=[self.tableView indexPathForSelectedRow];
    Photo *c=photos[path.row];
    [pvc setCurrentPhoto:c];
    
}


@end
