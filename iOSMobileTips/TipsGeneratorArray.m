//
//  TipsGeneratorArray.m
//  iOSMobileTips
//
//  Created by Teacher on 9/23/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "TipsGeneratorArray.h"

@interface TipsGeneratorArray ()

@property (nonatomic, strong) NSArray *array;

@end

@implementation TipsGeneratorArray

-(void)generateSampleSet
{
    Tip *tip1 = [[Tip alloc] init];
    tip1.title = @"Tip 1";
    tip1.tipDescription = @"Description 1";
    tip1.codeSegment = @"Code Segment 1";
    
    Tip *tip2 = [[Tip alloc] init];
    tip2.title = @"Tip 2";
    tip2.tipDescription = @"Description 2";
    tip2.codeSegment = @"Code Segment 2";
    
    Tip *tip3 = [[Tip alloc] init];
    tip3.title = @"Tip 3";
    tip3.tipDescription = @"Description 3";
    tip3.codeSegment = @"Code Segment 3";
    
    self.array = [[NSArray alloc] initWithObjects:tip1, tip2, tip3, nil];
}

-(NSString*)getTitleAtIndex:(NSUInteger)index
{
    Tip *tip = [self.array objectAtIndex:index];
    return [tip title];
}

-(NSString*)getTipDescriptionAtIndex:(NSUInteger)index
{
    Tip *tip = [self.array objectAtIndex:index];
    return [tip tipDescription];
}

-(NSString*)getCodeSegmentAtIndex:(NSUInteger)index
{
    Tip *tip = [self.array objectAtIndex:index];
    return [tip codeSegment];
}

-(int)getCount
{
    return [self.array count];
}

@end
