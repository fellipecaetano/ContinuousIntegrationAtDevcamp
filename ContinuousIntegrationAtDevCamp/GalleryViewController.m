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
    [self.galleryItemsView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: @"GalleryItemCell"];
    self.galleryItemsView.accessibilityLabel = @"GalleryItemsView";
    self.galleryItemsView.accessibilityIdentifier = @"GalleryItemsView";
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray* images = @[ @"https://pbs.twimg.com/profile_images/466690236500557824/g0JKsTn_.jpeg", @"https://pbs.twimg.com/profile_images/466626081470955520/RewkXkPC.png", @"https://pbs.twimg.com/profile_images/2634755453/40ffdf8a114b08a13aecc6f2a3a17320.png", @"https://pbs.twimg.com/profile_images/1733661436/41813_104538479599168_2496_n.jpg", @"https://pbs.twimg.com/profile_images/460980570063777794/InaVWRss.jpeg", @"https://pbs.twimg.com/profile_images/2824011293/bb564a295d0862084240932900251366.png", @"https://pbs.twimg.com/profile_images/2992312948/659fbb7d7a2e7f3220c0d2efd7ab571a.png", @"https://pbs.twimg.com/profile_images/378800000797537194/0c0825779c10b7278ff38b8fc8e447b5.jpeg", @"https://pbs.twimg.com/profile_images/3291883997/fae26d278dac0db23cc44e0465f42c4a.png"];
    return images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"GaleryItemCell" forIndexPath: indexPath];   
    return cell;
}

@end
