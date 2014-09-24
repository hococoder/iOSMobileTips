//
//  ViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 9/22/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "ViewController.h"
#import "TipsTableViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIButton *button;

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


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"segue is %@", segue.identifier);
    if ([segue.identifier isEqual:@"tableSegue"])
    {
        TipsTableViewController *tableViewController = [segue destinationViewController];
        TipsGeneratorArray *tipArray = [[TipsGeneratorArray alloc] init];
        [tipArray generateSampleSet];
        [tableViewController setTipsArray:tipArray];
    }
 // Pass the selected object to the new view controller.
}
 

@end
