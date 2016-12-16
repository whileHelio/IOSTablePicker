//
//  ViewController.m
//  training2
//
//  Created by Helio Carvalho on 27/09/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong,nonatomic) UIScrollView *scrolled;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect screen=[[UIScreen mainScreen] bounds];
    UIView *mainView=[[UIView alloc]initWithFrame:screen];
    mainView.backgroundColor=[UIColor yellowColor];
    self.view=mainView;
    
    
    //criaçao de um botao
    UIButton *firstButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame=CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"First" forState:UIControlStateNormal];//forState e uma condiçao para o titulo para quando se carrega no botao
    [self.view addSubview:firstButton];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(50, 30, 200, 44)];
    label.text=@"This is my first app";
    [self.view addSubview:label];
    self.title=@"Title";
    label.backgroundColor=[UIColor clearColor];
    
    [firstButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIImageView *summer=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"summer.jpg"]];
   
    summer.frame=CGRectMake(100, 400, 200, 250);
    [self.view addSubview:summer];
    
    UILabel *nameLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 140, 280, 40)];
    nameLabel.text=@"Name:Hélio Carvalho";
    [self.view addSubview:nameLabel];
    
    UILabel *cityName=[[UILabel alloc]init];
    cityName.text=@"From:Lisboa";
    [self.view addSubview:cityName];
    
    UITextView *biography=[[UITextView alloc]initWithFrame:CGRectMake(12, 260, 300, 180)];
    biography.editable=NO;
    biography.font=[UIFont fontWithName:@"Helvetica" size:15];
    biography.text=@"A UIImageView object displays a single image or a sequence of animated images in your interface. Image views let you efficiently draw any image that can be specified using a UIImage object. For example, you can use this class to display the contents of many standard image files, such as JPEG and PNG files. You can configure image views programmatically or in your storyboard file and change the images they display at runtime. For animated images, you can also use the methods of this class to start and stop the animation and specify other animation parameters.Overview.For information about basic view behaviors, see View Programming Guide for iOS.Understanding How Images Are ScaledAn image view uses its contentMode property and the configuration of the image itself to determine how to display the image. It is best to specify images whose dimensions match the dimensions of the image view exactly, but image views can scale your images to fit all or some of the available space. If the size of the image view itself changes, it automatically scales the image as needed.For an image without cap insets, the presentation of the image is determined solely by the image views contentMode property. The UIViewContentModeScaleAspectFit and UIViewContentModeScaleAspectFill modes scale the image to fit or fill the space while maintaining the images original aspect ratio.";
    [self.view addSubview:biography];
    
    UILabel *memberSinceLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 750, 280, 40)];
    memberSinceLabel.text=@"September 2016";
    [self.view addSubview:memberSinceLabel];
    
   
    self.scrolled=[[UIScrollView alloc]initWithFrame:self.view.bounds];
    self.scrolled.contentSize=CGSizeMake(320, 850);
    //[scroll addSubview:memberSinceLabel];
    //NSArray *sub=@[self.view.subviews];
    //[self.view addSubview:self.scrolled];
    //[self addSubviews:sub scroller:self.scrolled];
    self.scrolled.autoresizingMask=UIViewAutoresizingFlexibleHeight;
    
}

/*-(void)addSubviews:(NSArray *)arr  scroller:(UIScrollView *)scrollView{
    for(UIView * subs in arr){
        NSLog(@"%@",subs);
       [scrollView addSubview:subs];
    }

    
}
*/

-(void)push{
    FirstViewController *viewControl=[[FirstViewController alloc]init];
    
    [self.navigationController pushViewController:viewControl animated:YES];
    
}

-(void)myAlert:(UIButton *)sender{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Title" message:@"This is my Alert" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:UIAlertActionStyleDefault];
    [alert addAction:alertAction];
    [self presentViewController:alert animated:YES completion:nil];
    [sender removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
