//
//  NDCollectionViewFlowLayout.m
//  iOSMobileTips
//
//  Created by Steele, Josh on 10/5/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

#import "NDCollectionViewFlowLayout.h"

//@interface NDCollectionViewFlowLayout : UICollectionViewFlowLayout
//@end

// NDCollectionViewFlowLayout.m
#import "NDCollectionViewFlowLayout.h"
@implementation NDCollectionViewFlowLayout

-(id)init
{
    if (!(self = [super init])) return nil;
    
    self.itemSize = CGSizeMake(200, 50);
    self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    self.minimumInteritemSpacing = 10.0f;
    self.minimumLineSpacing = 10.0f;
    
    return self;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    NSMutableArray *newAttributes = [NSMutableArray arrayWithCapacity:attributes.count];
    for (UICollectionViewLayoutAttributes *attribute in attributes) {
        if ((attribute.frame.origin.x + attribute.frame.size.width <= self.collectionViewContentSize.width) &&
            (attribute.frame.origin.y + attribute.frame.size.height <= self.collectionViewContentSize.height)) {
            [newAttributes addObject:attribute];
        }
    }
    return newAttributes;
}
@end