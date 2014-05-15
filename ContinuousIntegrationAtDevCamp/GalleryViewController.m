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
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray* images = @[ @"https://pbs.twimg.com/profile_images/466690236500557824/g0JKsTn_.jpeg", @"https://pbs.twimg.com/profile_images/466626081470955520/RewkXkPC.png", @"https://pbs.twimg.com/profile_images/2634755453/40ffdf8a114b08a13aecc6f2a3a17320.png", @"https://pbs.twimg.com/profile_images/1733661436/41813_104538479599168_2496_n.jpg" ];
    return images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"GaleryItemCell" forIndexPath: indexPath];   
    return cell;
}

@end
