//
//  GalleryItemViewController.m
//  ContinuousIntegrationAtDevCamp
//
//  Created by Fellipe Caetano on 5/16/14.
//  Copyright (c) 2014 DevCamp. All rights reserved.
//

#import "GalleryItemViewController.h"

@interface GalleryItemViewController ()
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
