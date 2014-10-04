//
//  View2_Brightness.m
//  HW1
//
//  Created by Edgar González on 02/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "View2_Brightness.h"

@interface View2_Brightness ()
@property (strong, nonatomic) IBOutlet UIImageView *ImageNewYork;
@property (strong, nonatomic) IBOutlet UISlider *sliderTrans;

@end

@implementation View2_Brightness

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SliderBrightness:(id)sender {
    self.ImageNewYork.alpha = self.sliderTrans.value;
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
