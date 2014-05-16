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
        NSIndexPath* indexPath = [NSIndexPath indexPathForItem: idx inSection: 0];
        [tester waitForCellAtIndexPath: indexPath inCollectionViewWithAccessibilityIdentifier: accessibilityLabel];
    }];
}

- (void) testIfTouchingAnItemBringsItsDetails {
    NSIndexPath* itemIndex = [NSIndexPath indexPathForItem: 3 inSection: 0];
    [tester tapItemAtIndexPath: itemIndex inCollectionViewWithAccessibilityIdentifier: @"GalleryItemsView"];
    [tester waitForViewWithAccessibilityLabel: @"GalleryItemDetailsView"];
    [tester waitForViewWithAccessibilityLabel: @"TitleLabel"];
    
    [tester runBlock:^KIFTestStepResult(NSError *__autoreleasing *error) {
        UIAccessibilityElement* labelContainer = [[UIApplication sharedApplication] accessibilityElementMatchingBlock: ^BOOL(UIAccessibilityElement * element) {
            return [element.accessibilityLabel isEqualToString: @"TitleLabel"];
        }];
        UILabel* titleLabel = (UILabel*) [UIAccessibilityElement viewContainingAccessibilityElement: labelContainer];
        KIFTestCondition([titleLabel.text isEqualToString: @"Gallery Item #4"], error, @"");
        return KIFTestStepResultSuccess;
    }];
}

@end
