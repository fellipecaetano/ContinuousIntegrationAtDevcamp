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

- (void) testIfAllItemsAppear {
    NSString* accessibilityLabel = @"GalleryItemsView";
    [tester waitForViewWithAccessibilityLabel: accessibilityLabel];
    
    NSIndexSet* cellIndexes = [NSIndexSet indexSetWithIndexesInRange: NSMakeRange(0, 9)];
    [cellIndexes enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL *stop) {
        NSIndexPath* indexPath = [NSIndexPath indexPathForRow: idx inSection: 0];
        [tester waitForCellAtIndexPath: indexPath inCollectionViewWithAccessibilityIdentifier: accessibilityLabel];
    }];
}

- (void) testIfTouchingAnItemBringsItsDetails {
    NSIndexPath* itemIndex = [NSIndexPath indexPathForRow: 0 inSection: 0];
    [tester tapItemAtIndexPath: itemIndex inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForViewWithAccessibilityLabel: @"GalleryItemDetailsView"];
    [tester waitForViewWithAccessibilityLabel: @"TitleLabel"];
}

@end
