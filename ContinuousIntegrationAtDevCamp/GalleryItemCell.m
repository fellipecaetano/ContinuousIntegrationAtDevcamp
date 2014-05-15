//
//  GalleryItemCell.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "GalleryItemCell.h"

@implementation GalleryItemCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}

+ (NSString *)reuseIdentifier {
    return NSStringFromClass(self);
}

@end
