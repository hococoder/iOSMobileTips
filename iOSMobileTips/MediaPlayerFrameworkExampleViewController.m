//
//  AVFoundationFrameworkExampleViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 10/13/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

//AVFoundation can be used to capture video and audio with associated metadata

#import "MediaPlayerFrameworkExampleViewController.h"

@interface MediaPlayerFrameworkExampleViewController ()

@property (nonatomic, strong) MPMoviePlayerViewController *mvController;
@property (nonatomic, strong) UIButton *playMovie;

@end

@implementation MediaPlayerFrameworkExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //pull in a few videos from MESSENGER Site here.  Avoid recording things due to being on campus
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://messenger.jhuapl.edu/the_mission/movies/LunarEclipse_20141008_x2.mp4"];
    
    self.mvController = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
}

- (IBAction)playMe:(id)sender
{
    [self.mvController.moviePlayer setShouldAutoplay:NO];
    [self.mvController.moviePlayer prepareToPlay];
    
    [self.mvController.view setFrame:CGRectMake(0, 0, 600, 400)];
    self.mvController.modalPresentationStyle = UIModalPresentationPageSheet;
    [self presentViewController:self.mvController animated:YES completion:nil];

    
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
