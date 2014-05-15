//
//  GalleryItemCell.h
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/15/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryItemCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

+ (NSString*) reuseIdentifier;

@end
