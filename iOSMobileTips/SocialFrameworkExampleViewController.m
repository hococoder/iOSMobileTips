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

}

- (IBAction)shareInfo:(id)sender
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
    }
    
    SLComposeViewController *composeController = [SLComposeViewController
                                                  composeViewControllerForServiceType:SLServiceTypeFacebook];
    
    [composeController setInitialText:@"Just found this great website"];
    [composeController addURL: [NSURL URLWithString:
                                @"http://www.ebookfrenzy.com"]];
    
    [self presentViewController:composeController
                       animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
