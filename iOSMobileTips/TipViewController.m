//
//  TipViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 9/22/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()



@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tipTitle setText:self.tipTitleText];
    [self.tipDescription setText:self.tipDescriptionText];
    [self.tipCodeSegment setText:self.tipCodeSegmentText];
    
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

@end
