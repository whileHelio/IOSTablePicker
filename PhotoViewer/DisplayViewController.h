//
//  DisplayViewController.h
//  PhotoViewer
//
//  Created by Helio Carvalho on 04/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"
#import "TableViewController.h"

@interface DisplayViewController : UIViewController
@property (nonatomic) Photo *currentPhoto;

@end
