//
//  SocialFrameworkExampleViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 10/13/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "SocialFrameworkExampleViewController.h"
@import Social;

@interface SocialFrameworkExampleViewController ()

@property (nonatomic, strong) IBOutlet UIButton *shareButton;


@end

@implementation SocialFrameworkExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  
}

- (IBAction)shareInfo:(id)sender
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
    }
    
    SLComposeViewController *composeController = [SLComposeViewController
                                                  composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [composeController setInitialText:@"Just found this great website"];
    //    [composeController addImage:postImage.image];
    [composeController addURL: [NSURL URLWithString:
                                @"http://www.ebookfrenzy.com"]];
    
    [self presentViewController:composeController
                       animated:YES completion:nil];
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
