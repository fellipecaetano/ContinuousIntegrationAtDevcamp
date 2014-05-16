//
//  KIFUITestActor+TextInspection.h
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/16/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "KIFUITestActor.h"

@interface KIFUITestActor (TextInspection)

- (void) checkText: (NSString*) text ofViewWithAccessibilityLabel: (NSString*) accessibilityLabel;

@end
