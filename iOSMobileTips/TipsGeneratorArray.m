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
    tip1.title = @"UITableViewCollection";
    tip1.tipDescription = @"Description 1";
    tip1.codeSegment = @"Code Segment 1";
    tip1.storyboardName = @"";
    
    Tip *tip2 = [[Tip alloc] init];
    tip2.title = @"UICollectionView";
    tip2.tipDescription = @"Description 2";
    tip2.codeSegment = @"Code Segment 2";
    tip2.storyboardName = @"";
    
    Tip *tip3 = [[Tip alloc] init];
    tip3.title = @"UIKit";
    tip3.tipDescription = @"Description 3";
    tip3.codeSegment = @"Code Segment 3";
    tip3.storyboardName = @"uikit";
    
    Tip *tip4 = [[Tip alloc] init];
    tip4.title = @"Foundation Framework";
    tip4.tipDescription = @"Description 4";
    tip4.codeSegment = @"Code Segment 4";
    tip4.storyboardName = @"";
    
    Tip *tip5 = [[Tip alloc] init];
    tip5.title = @"MediaPlayer";
    tip5.tipDescription = @"Description 5";
    tip5.codeSegment = @"Code Segment 5";
    tip5.storyboardName = @"media";
    
    Tip *tip6 = [[Tip alloc] init];
    tip6.title = @"Social";
    tip6.tipDescription = @"Description 6";
    tip6.codeSegment = @"Code Segment 6";
    tip6.storyboardName = @"social";
    
    Tip *tip7 = [[Tip alloc] init];
    tip7.title = @"Core Image";
    tip7.tipDescription = @"Description 7";
    tip7.codeSegment = @"Code Segment 7";
    tip7.storyboardName = @"coreimage";
    
    Tip *tip8 = [[Tip alloc] init];
    tip8.title = @"Core Location";
    tip8.tipDescription = @"Description 8";
    tip8.codeSegment = @"Code Segment 8";
    tip8.storyboardName = @"corelocation";
    
    Tip *tip9 = [[Tip alloc] init];
    tip9.title = @"Mapkit";
    tip9.tipDescription = @"Description 9";
    tip9.codeSegment = @"Code Segment 9";
    tip9.storyboardName = @"mapKitView";
    
    
    
    self.array = [[NSArray alloc] initWithObjects:tip1, tip2, tip3, tip4, tip5, tip6, tip7, tip8, tip9, nil];
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

-(NSString*)getTipStoryboardNameAtIndex:(NSUInteger)index
{
    Tip *tip = [self.array objectAtIndex:index];
    return [tip storyboardName];
}

-(NSUInteger)getCount
{
    return [self.array count];
}

@end
