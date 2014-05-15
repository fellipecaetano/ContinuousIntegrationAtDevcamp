//
//  GalleryItem.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "GalleryItem.h"

@implementation GalleryItem

- (instancetype)initWithImageUrl:(NSString *)imageUrl title:(NSString *)title {
    self = [super init];
    if (self) {
        self.imageUrl = imageUrl;
        self.title = title;
    }
    return self;
}

@end
