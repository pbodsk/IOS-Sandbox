//
//  ISABlurViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 02/04/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISABlurViewController.h"
#import "UIImage+ImageEffects.h"
#include <GPUImage.h>

@interface ISABlurViewController ()
@property (nonatomic, strong) GPUImageiOSBlurFilter *blurFilter;
@property (nonatomic, strong) GPUImageView *blurView;
@end

@implementation ISABlurViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.blurView = [[GPUImageView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:self.blurView];
    [self blurredSnapshot];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)blurredSnapshot {
    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.view drawViewHierarchyInRect:self.view.frame afterScreenUpdates:YES];
    
    UIImage *snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.blurFilter = [GPUImageiOSBlurFilter new];
    self.blurFilter.blurRadiusInPixels = 1.0f;
    
    GPUImagePicture *picture = [[GPUImagePicture alloc]initWithImage:snapshotImage];
    [picture addTarget:self.blurFilter];
    
    [self.blurFilter addTarget:self.blurView];
    [picture processImage];
}

@end
