//
//  ViewController.m
//  HW1
//
//  Created by Edgar González on 30/09/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "ViewController.h"

#define nCoolPink       colorWithRed:255/255.0 green:135/255.0 blue:233/255.0 alpha:1.0
int Bkgcolor = 0;
int Lblcolor = 0;
int ImgPhoto = 0;

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UIImageView *imgBox;
@property (strong, nonatomic) IBOutlet UILabel *lblYears;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnColor:(id)sender {
    if (Lblcolor == 0) {
        self.labelName.textColor  = [UIColor nCoolPink];
        Lblcolor++;
    }
    else if (Lblcolor == 1){
        self.labelName.textColor  = [UIColor redColor];
        Lblcolor++;
        
    }
    else if (Lblcolor == 2){
        self.labelName.textColor  = [UIColor grayColor];
        Lblcolor++;
    }
    else if (Lblcolor == 3){
        self.labelName.textColor  = [UIColor purpleColor];
        Lblcolor++;
        
    }
    else if (Lblcolor == 4){
        self.labelName.textColor  = [UIColor yellowColor];
        Lblcolor++;
        
    }
    else {
        self.labelName.textColor  = [UIColor blueColor];
        Lblcolor = 0;
    }

}

- (IBAction)btnBackground:(id)sender {
    if (Bkgcolor == 0) {
        self.view.backgroundColor = [UIColor nCoolPink];
        self.labelName.backgroundColor  = [UIColor nCoolPink];
        Bkgcolor++;
    }
    else if (Bkgcolor == 1){
        self.view.backgroundColor = [UIColor redColor];
        self.labelName.backgroundColor  = [UIColor redColor];
        Bkgcolor++;
    
    }
    else if (Bkgcolor == 2){
        self.view.backgroundColor = [UIColor grayColor];
        self.labelName.backgroundColor  = [UIColor grayColor];
        Bkgcolor++;
    }
    else if (Bkgcolor == 3){
        self.view.backgroundColor = [UIColor purpleColor];
        self.labelName.backgroundColor  = [UIColor purpleColor];
        Bkgcolor++;
        
    }
    else if (Bkgcolor == 4){
        self.view.backgroundColor = [UIColor yellowColor];
        self.labelName.backgroundColor  = [UIColor yellowColor];
        Bkgcolor++;
        
    }
    else {
        self.view.backgroundColor = [UIColor blueColor];
        self.labelName.backgroundColor  = [UIColor blueColor];
        Bkgcolor = 0;
    }
}

- (IBAction)btnImage:(id)sender {
    if (ImgPhoto == 0) {
        self.imgBox.image = [UIImage imageNamed: @"1.jpg"];
        self.lblYears.text = @"0";
        ImgPhoto++;
    }
    else if (ImgPhoto == 1){
        self.imgBox.image = [UIImage imageNamed: @"2.jpg"];
        self.lblYears.text = @"4 years old";
        ImgPhoto++;
    }
    else if (ImgPhoto == 2){
        self.imgBox.image = [UIImage imageNamed: @"3.jpg"];
        self.lblYears.text = @"10 years old";
        ImgPhoto++;
    }
    else if (ImgPhoto == 3){
        self.imgBox.image = [UIImage imageNamed: @"5.jpg"];
        self.lblYears.text = @"17 years old";
        ImgPhoto++;
        
    }
    else {
        self.imgBox.image = [UIImage imageNamed: @"4.jpg"];
        self.lblYears.text = @"21 years old";
        ImgPhoto = 0;
   }
}

@end
