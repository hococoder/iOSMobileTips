//
//  TipViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 9/22/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()

@property (nonatomic, strong) IBOutlet UIButton *showExampleButton;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tipTitle setText:self.tipTitleText];
    [self.tipDescription setText:self.tipDescriptionText];
    [self.tipCodeSegment setText:self.tipCodeSegmentText];
    
    if ([self.tipStoryboardName isEqualToString:@""])
        self.showExampleButton.hidden = YES;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showExample:(id)sender
{
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *exampleViewController = [storyBoard instantiateViewControllerWithIdentifier:self.tipStoryboardName];
    
    [self.navigationController pushViewController:exampleViewController animated:YES];
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
