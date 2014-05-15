//
//  GalleryTestCase.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF.h>

@interface GalleryTestCase : KIFTestCase

@end

@implementation GalleryTestCase

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void) testIfAllItemsAppear
{
    [tester waitForViewWithAccessibilityLabel: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 0 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 1 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 2 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 3 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 4 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 5 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 6 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 7 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForCellAtIndexPath: [NSIndexPath indexPathForRow: 8 inSection: 0] inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
}

@end
