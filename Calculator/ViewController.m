//
//  ViewController.m
//  Calculator
//
//  Created by Helio Carvalho on 15/08/16.
//  Copyright © 2016 Helio Carvalho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *mostrador;

@property NSString*storage;

@end

@implementation ViewController
- (IBAction)clear:(id)sender {
    NSString*u=[NSString stringWithFormat:@""];
    self.mostrador.text=u;
}

- (IBAction)numUm:(id)sender {
     NSString*u=[NSString stringWithFormat:@"%c",49];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:u];
    
}
- (IBAction)numDois:(id)sender {
     NSString*d=[NSString stringWithFormat:@"%c",50];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:d];
    }
- (IBAction)numTres:(id)sender {
     NSString*t=[NSString stringWithFormat:@"%c",51];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:t];
    }
- (IBAction)numQuatro:(id)sender {
    NSString*b=[NSString stringWithFormat:@"%c",52];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:b];
}
- (IBAction)numCinco:(id)sender {
    NSString*p=[NSString stringWithFormat:@"%c",53];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:p];
}
- (IBAction)numSeis:(id)sender {
    NSString*z=[NSString stringWithFormat:@"%c",54];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:z];
}
- (IBAction)numSete:(id)sender {
    NSString*d=[NSString stringWithFormat:@"%c",55];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:d];
}
- (IBAction)numOito:(id)sender {
    NSString*o=[NSString stringWithFormat:@"%c",56];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:o];
}
- (IBAction)numNove:(id)sender {
    NSString*d=[NSString stringWithFormat:@"%c",57];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:d];
}
- (IBAction)numZero:(id)sender {
    NSString*d=[NSString stringWithFormat:@"%c",58];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:d];
}

- (IBAction)soma:(id)sender {
    NSString*p=[NSString stringWithFormat:@"%c",43];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:p];
    
}
- (IBAction)menos:(id)sender {
    NSString*m=[NSString stringWithFormat:@"%c",45];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:m];
    
}
- (IBAction)multiplicacao:(id)sender {
    NSString *v=[NSString stringWithFormat:@"%c",42];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:v];
    
}
- (IBAction)divisao:(id)sender {
    NSString *d=[NSString stringWithFormat:@"%c",47];
    self.mostrador.text=[self.mostrador.text stringByAppendingString:d];
    
}

- (IBAction)igual:(id)sender {

    NSString*conta=self.mostrador.text;
    NSExpression *boda=[NSExpression expressionWithFormat:conta];
    NSString *result=[boda expressionValueWithObject:nil context:nil];
    int ze=[result intValue];
    NSString*treta=[NSString stringWithFormat:@"%i",ze];
    self.mostrador.text=treta;

    
    /*}else if([conta containsString:@"-"]){
        doido=[conta componentsSeparatedByString:@"-"];
        for(NSString* g in doido){
            NSString* d=doido[0];
            int c=[d intValue];
            c-=[g intValue];
            NSString* result1=[NSString stringWithFormat:@"%i",c];
            self.mostrador.text=result1;
        }
    }else if([conta containsString:@"*"]){
        doido=[conta componentsSeparatedByString:@"*"];
        for(NSString* g in doido){
            NSString* d=doido[0];
            int c=[d intValue];
            c*=[g intValue];
            NSString* result1=[NSString stringWithFormat:@"%i",c];
            self.mostrador.text=result1;
        }
    }else if([conta containsString:@"/"]){
        doido=[conta componentsSeparatedByString:@"/"];
        for(NSString* g in doido){
            NSString* d=doido[0];
            int c=[d intValue];
            c/=[g intValue];
            NSString* result1=[NSString stringWithFormat:@"%i",c];
            self.mostrador.text=result1;
        }
    }*/
}


- (void)viewDidLoad {
   
   // NSString * xoxo=self.mostrador.text;
   // NSInteger boi=[xoxo integerValue];
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
