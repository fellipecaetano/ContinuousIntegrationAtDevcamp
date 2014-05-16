//
//  KIFUITestActor+TextInspection.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/16/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "KIFUITestActor+TextInspection.h"
#import <KIF/UIApplication-KIFAdditions.h>
#import <KIF/UIAccessibilityElement-KIFAdditions.h>

@implementation KIFUITestActor (TextInspection)

- (void)checkText:(NSString *)text ofViewWithAccessibilityLabel:(NSString *)accessibilityLabel {
    [tester runBlock:^KIFTestStepResult(NSError *__autoreleasing *error) {
        UIAccessibilityElement* labelContainer = [[UIApplication sharedApplication] accessibilityElementMatchingBlock: ^BOOL(UIAccessibilityElement * element) {
            return [element.accessibilityLabel isEqualToString: accessibilityLabel];
        }];
        UILabel* titleLabel = (UILabel*) [UIAccessibilityElement viewContainingAccessibilityElement: labelContainer];
        KIFTestCondition([titleLabel.text isEqualToString: text], error, @"Expected %@ but was %@", text, titleLabel.text);
        return KIFTestStepResultSuccess;
    }];
}

@end
