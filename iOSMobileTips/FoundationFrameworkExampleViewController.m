//
//  FoundationFrameworkExampleViewController.m
//  iOSMobileTips
//
//  Created by Teacher on 10/13/14.
//  Copyright (c) 2014 Teacher. All rights reserved.
//

//Note: Foundation Framework is different from Core Foundation.  Foundation is in ObjC while CF is in C.  CF has a limited object model that allows
//types to be referred to as objects, even though they aren't.  Toll free bridging exists to connect Foundation and CF.  ARC does not support CF types, so
//they must be handled manually.  See http://www.mikeash.com/pyblog/friday-qa-2011-09-30-automatic-reference-counting.html for more details

//For more on the code here, check out http://code.tutsplus.com/tutorials/exploring-the-foundation-framework--mobile-13976

#import "FoundationFrameworkExampleViewController.h"

@interface FoundationFrameworkExampleViewController ()

@end

@implementation FoundationFrameworkExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSObject *myFirstObject = [[NSObject alloc] init];
    NSLog(@"Class > %@", [myFirstObject class]);
    NSLog(@"Superclass > %@", [myFirstObject superclass]);
    NSLog(@"Conforms to Protocol > %i", [myFirstObject conformsToProtocol:@protocol(NSObject)]);
    
    NSNumber *myNumber = [NSNumber numberWithDouble:854736e+13];
    NSLog(@"Double Value    > %f", [myNumber doubleValue]);
    NSLog(@"Float Value     > %f", [myNumber floatValue]);
    NSLog(@"Int Value       > %i", [myNumber intValue]);
    
    
    NSString *string1 = @"This is a string literal.";
    NSString *string2 = [[NSString alloc] initWithFormat:@"Strings can be created many ways."];
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:string1];
    [mutableString appendFormat:@" %@", string2];
    NSLog(@"%@", mutableString);
    
    NSArray *myArray = [NSArray arrayWithObjects:@"Bread", @"Butter", @"Milk", @"Eggs", nil];
    NSLog(@"Number of Elements  > %li", [myArray count]);
    NSLog(@"Object at Index 2   > %@", [myArray objectAtIndex:2]);
    
    NSMutableArray *myMutableArray = [NSMutableArray arrayWithObject:[NSNumber numberWithInt:265]];
    [myMutableArray addObject:[NSNumber numberWithInt:45]];
    NSLog(@"Mutable Array       > %@", myMutableArray);
    
    NSString *keyA = @"myKey";
    NSString *keyB = @"myKey";
    NSDictionary *myDictionary = [NSDictionary dictionaryWithObject:@"This is a string literal" forKey:keyA];
    NSLog(@"%@", [myDictionary objectForKey:keyB]);
    
    //literals
    NSNumber *oldNumber1 = [NSNumber numberWithBool:YES];
    NSNumber *newNubmer1 = @YES;
    
    NSNumber *oldNumber2 = [NSNumber numberWithInt:2147];
    NSNumber *newNubmer2 = @2147;
    
    NSArray *oldArray = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
    NSArray *newArray = @[@"one", @"two", @"three"];
    
    NSDictionary *oldDictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithInt:12345] forKey:@"key"];
    NSDictionary *newDictionary = @{@"key": @12345};
    
    NSLog(@"%@ - %i - %f", @"an object", 3, 3.14);

    
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
