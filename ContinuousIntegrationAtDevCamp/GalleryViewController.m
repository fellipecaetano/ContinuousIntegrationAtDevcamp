//
//  GalleryViewController.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Mac Mini on 14/05/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "GalleryViewController.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import "GalleryItem.h"
#import <UIImageView+AFNetworking.h>
#import "GalleryItemCell.h"
#import "GalleryItemViewController.h"

@interface GalleryViewController ()
@end

@implementation GalleryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.galleryItemsView registerClass: [GalleryItemCell class]
              forCellWithReuseIdentifier: [GalleryItemCell reuseIdentifier]];
    self.galleryItemsView.accessibilityLabel = @"GalleryItemsView";
    self.galleryItemsView.accessibilityIdentifier = @"GalleryItemsView";
    self.title = @"Gallery";
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray* items = [GalleryItem defaultItems];
    return items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GalleryItemCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"GaleryItemCell" forIndexPath: indexPath];
    GalleryItem* item = [GalleryItem defaultItems][indexPath.item];
    [cell.imageView setImageWithURL: [NSURL URLWithString: item.imageURL]];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath* selectedIndex = self.galleryItemsView.indexPathsForSelectedItems.firstObject;
    GalleryItem* selectedItem = [GalleryItem defaultItems][selectedIndex.item];
    GalleryItemViewController* destination = segue.destinationViewController;
    destination.presentedItem = selectedItem;
}

@end
