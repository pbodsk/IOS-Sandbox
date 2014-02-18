//
//  ISAScrollViewControllerTests.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ISAScrollViewController.h"

@interface ISAScrollViewControllerTests : XCTestCase

@end

@implementation ISAScrollViewControllerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testCanCreate {
    ISAScrollViewController *scrollViewController = [[ISAScrollViewController alloc]init];
    XCTAssertNotNil(scrollViewController, @"scrollViewController should't be nil");
}

- (void)testHasTitle {
    ISAScrollViewController *scrollViewController = [[ISAScrollViewController alloc]initWithNibName:@"ISAScrollViewController" bundle:nil];
    NSString *title = scrollViewController.title;
    NSString *expectedTitle = @"Scroll View Controller";
    XCTAssertTrue([title isEqualToString:expectedTitle], @"Expected title to be %@ but it was %@", expectedTitle, title);
}

@end
