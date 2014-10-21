//
//  CoreImageExampleViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 10/20/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "CoreImageExampleViewController.h"

@interface CoreImageExampleViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

//create a place to render

@property (strong, nonatomic) CIContext *context;

@end

@implementation CoreImageExampleViewController

- (IBAction)applyFilter:(id)sender
{
    self.context = [CIContext contextWithOptions:nil];
    
    //create an image to filter
    CIImage *inputImage = [[CIImage alloc] initWithImage:self.photoImageView.image];
    
    //create a random color to pass to the filter
    NSDictionary *randomColor = @{kCIInputAngleKey: @(arc4random_uniform(314)/100.00)};
    
    //apply to the image
    CIImage *filteredImage = [inputImage imageByApplyingFilter:@"CIHueAdjust" withInputParameters:randomColor];
    
    CGImageRef renderedImage = [self.context createCGImage:filteredImage fromRect:filteredImage.extent ];
    
    //update the UI
    self.photoImageView.image = [[UIImage alloc] initWithCGImage:renderedImage];
}

@end
