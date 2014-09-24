//
//  TipViewController.h
//  iOSMobileTips
//
//  Created by Teacher on 9/22/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController

@property (nonatomic, strong) NSString* tipTitleText;
@property (nonatomic, strong) NSString* tipDescriptionText;
@property (nonatomic, strong) NSString* tipCodeSegmentText;

@property (nonatomic, strong) IBOutlet UILabel *tipTitle;
@property (nonatomic, strong) IBOutlet UITextView *tipDescription;
@property (nonatomic, strong) IBOutlet UITextView *tipCodeSegment;

@end
