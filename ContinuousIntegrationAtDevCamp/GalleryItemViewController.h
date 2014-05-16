//
//  GalleryItemViewController.h
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/16/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GalleryItem;

@interface GalleryItemViewController : UIViewController

@property (weak, nonatomic) GalleryItem* presentedItem;

@end
