//
//  GalleryItemViewController.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/16/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "GalleryItemViewController.h"
#import "GalleryItem.h"
#import <UIImageView+AFNetworking.h>

@interface GalleryItemViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation GalleryItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.accessibilityLabel = @"GalleryItemDetailsView";
    self.titleLabel.accessibilityLabel = @"TitleLabel";
    self.imageView.accessibilityLabel = @"ImageView";
    self.titleLabel.text = self.presentedItem.title;
    self.title = self.presentedItem.title;
    [self.imageView setImageWithURL: [NSURL URLWithString: self.presentedItem.imageURL]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
