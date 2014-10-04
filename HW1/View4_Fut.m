//
//  View4_Fut.m
//  HW1
//
//  Created by Edgar González on 02/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "View4_Fut.h"

int goals =0;

@interface View4_Fut ()
@property (strong, nonatomic) IBOutlet UITextField *txtGoals;
@property (strong, nonatomic) IBOutlet UISegmentedControl *SegmentedCtrl;
@property (strong, nonatomic) IBOutlet UIImageView *ImgFut;

@end

@implementation View4_Fut

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)btnGoalUp:(id)sender {
    //NSString *str = [@(goals) stringValue];
    
    if (goals < 9) {
        goals++;
        self.txtGoals.text = [@(goals) stringValue];
    }
    else{
        goals = 0;
        self.txtGoals.text = [@(goals) stringValue];
    }
    
}


- (IBAction)btnGoalDown:(id)sender {
    if (goals > 0) {
        goals--;
        self.txtGoals.text = [@(goals) stringValue];
    }
    else{
        goals = 9;
        self.txtGoals.text = [@(goals) stringValue];
    }
}

- (IBAction)fnSegmentedCtrl:(id)sender {
    if(self.SegmentedCtrl.selectedSegmentIndex == 0) {
        self.ImgFut.image = [UIImage imageNamed:@"aguilas.jpg"];
    } else {
        self.ImgFut.image = [UIImage imageNamed:@"Chivas.jpg"];
    }
}


@end
