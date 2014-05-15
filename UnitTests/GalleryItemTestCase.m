//
//  GalleryItemTestCase.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GalleryItem.h"

@interface GalleryItemTestCase : XCTestCase
@end

@implementation GalleryItemTestCase

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testIfObjectsAreCreatedProperly {
    GalleryItem* item = [[GalleryItem alloc] initWithImageUrl: @"http://image.com/url"
                                                        title: @"My gallery item"];
    XCTAssertEqualObjects(item.imageURL, @"http://image.com/url");
    XCTAssertEqualObjects(item.title, @"My gallery item");
}

@end
