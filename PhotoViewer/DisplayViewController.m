//
//  DisplayViewController.m
//  PhotoViewer
//
//  Created by Helio Carvalho on 04/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;
@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image=[UIImage imageNamed:self.currentPhoto.fileName];
    [self.currentImage setImage:image];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    InfoViewController* infoPvc=[segue destinationViewController];
    infoPvc.currentPhoto=self.currentPhoto;
    
    
}


@end
