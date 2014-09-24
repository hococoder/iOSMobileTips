//
//  TipsGeneratorArray.h
//  iOSMobileTips
//
//  Created by Teacher on 9/23/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tip.h"

@interface TipsGeneratorArray : NSObject

-(void)generateSampleSet;
-(NSString*)getTitleAtIndex:(NSUInteger)index;
-(NSString*)getTipDescriptionAtIndex:(NSUInteger)index;
-(NSString*)getCodeSegmentAtIndex:(NSUInteger)index;
-(int)getCount;

@end
