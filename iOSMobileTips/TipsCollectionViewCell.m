//
//  TipsCollectionViewCell.m
//  iOSMobileTips
//
//  Created by Steele, Josh on 10/5/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "TipsCollectionViewCell.h"

@implementation TipsCollectionViewCell

- (void)awakeFromNib
{
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 50, frame.size.width, 40)];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.titleLabel setNumberOfLines:0];
        self.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
        
        UIView *spacer1 = [UIView new];
        spacer1.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:spacer1];
        
        UIView *spacer2 = [UIView new];
        spacer2.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:spacer2];
        
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.titleLabel];

        
        NSDictionary *viewsDictionary = @{@"titleLabel":self.titleLabel, @"spacer1":spacer1, @"spacer2":spacer2};

        
        [self addConstraints:[NSLayoutConstraint
                                   constraintsWithVisualFormat:@"H:|[spacer1][titleLabel][spacer2(==spacer1)]|"
                                   options:0
                                   metrics:nil
                                   views:viewsDictionary]];
        
//        NSArray *constraint_horizontal = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-titleLabel-|"
//                                                                            options:0
//                                                                            metrics:nil
//                                                                                   views:viewsDictionary];
//        [self.titleLabel addConstraints:constraint_horizontal];

//        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel
//                                     attribute:NSLayoutAttributeLeft
//                                     relatedBy:NSLayoutRelationEqual
//                                        toItem:self
//                                     attribute:NSLayoutAttributeLeft
//                                    multiplier:1.0
//                                    constant:0.0]];
//        
//        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel
//                                                         attribute:NSLayoutAttributeRight
//                                                         relatedBy:NSLayoutRelationEqual
//                                                            toItem:self
//                                                         attribute:NSLayoutAttributeRight
//                                                        multiplier:1.0
//                                                          constant:0.0]];
    }
    return self;
}


@end
