//
//  GalleryItem.h
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GalleryItem : NSObject

@property (nonatomic, copy) NSString* imageUrl;
@property (nonatomic, copy) NSString* title;

- (instancetype) initWithImageUrl: (NSString*) imageUrl title: (NSString*) title;

@end
