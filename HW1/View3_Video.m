//
//  View3_Video.m
//  HW1
//
//  Created by Edgar González on 02/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "View3_Video.h"

@interface View3_Video ()
{
    MPMoviePlayerController *mpc;
}
@end

@implementation View3_Video

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

- (IBAction)btnPlay:(id)sender {
    NSString *stringPath = [[NSBundle mainBundle] pathForResource: @"VID-20140920-WA0008" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:stringPath];
    
    mpc = [[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc.view];
    
    //fullscreen?
    [mpc setFullscreen:YES];
    
    [mpc play];
}

- (IBAction)btnStop:(id)sender {
}
@end
