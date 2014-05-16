//
//  GalleryTestCase.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF.h>
#import <KIF/UIApplication-KIFAdditions.h>
#import <KIF/UIAccessibilityElement-KIFAdditions.h>
#import "KIFUITestActor+TextInspection.h"

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

- (void) testIfTouchingAnItemBringsItsDetails {
    NSIndexPath* itemIndex = [NSIndexPath indexPathForItem: 3 inSection: 0];
    NSString* title = @"Gallery Item #5";
    [tester tapItemAtIndexPath: itemIndex inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForViewWithAccessibilityLabel: @"GalleryItemDetailsView"];
    [tester waitForViewWithAccessibilityLabel: title];
    [tester waitForViewWithAccessibilityLabel: @"TitleLabel"];
    [tester checkText: title ofViewWithAccessibilityLabel: @"TitleLabel"];
    [tester waitForViewWithAccessibilityLabel: @"ImageView"];
    [tester tapViewWithAccessibilityLabel: @"Back"];
}

- (void) testIfAllItemsAppear {
    NSString* accessibilityLabel = @"GalleryItemsView";
    [tester waitForViewWithAccessibilityLabel: accessibilityLabel];
    
    NSIndexSet* cellIndexes = [NSIndexSet indexSetWithIndexesInRange: NSMakeRange(0, 9)];
    [cellIndexes enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL *stop) {
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem: idx inSection: 0];
        [tester waitForCellAtIndexPath: indexPath inCollectionViewWithAccessibilityIdentifier: accessibilityLabel];
    }];
}

@end
