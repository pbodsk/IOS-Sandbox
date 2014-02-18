//
//  ISARootViewControllerTests.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ISARootViewController.h"

@interface ISARootViewControllerTests : XCTestCase

@end

@implementation ISARootViewControllerTests

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
    ISARootViewController *rootViewController = [[ISARootViewController alloc]init];
    XCTAssertNotNil(rootViewController, @"rootViewController should't be nil");
}
@end
