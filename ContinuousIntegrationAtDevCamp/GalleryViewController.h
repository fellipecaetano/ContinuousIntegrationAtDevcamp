//
//  GalleryViewController.h
//  ContinuousIntegrationAtDevCamp
//
//  Created by Mac Mini on 14/05/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryViewController : UIViewController <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *galleryItemsView;

@end
