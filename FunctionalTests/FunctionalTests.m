//
//  FunctionalTests.m
//  FunctionalTests
//
//  Created by Mac Mini on 14/05/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface FunctionalTests : XCTestCase

@end

@implementation FunctionalTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertTrue(1, @"1 should be true");  
}

@end
