//
//  ISAScrollViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISAScrollViewController.h"

@interface ISAScrollViewController ()
@property (nonatomic, strong) NSArray *imagesArray;

@end

@implementation ISAScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Scroll View Controller";
        self.imagesArray = @[[UIImage imageNamed:@"1.jpg"], [UIImage imageNamed:@"2.jpg"], [UIImage imageNamed:@"3.jpg"]];
//                self.imagesArray = @[[UIColor redColor], [UIColor blueColor], [UIColor blackColor]];
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.translucent = YES;
    self.automaticallyAdjustsScrollViewInsets = NO; // <-- important!! Without this one the scrollview will be able to scroll 64px vertically
    

    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * self.imagesArray.count, self.scrollView.frame.size.height);
    self.scrollView.delegate = self;
    [self.scrollView setContentOffset:CGPointZero animated:YES];
    for(int i = 0; i < self.imagesArray.count; i++){
        
        UIImage *currentImage = [self.imagesArray objectAtIndex:i];
        CGSize scrollViewSize = self.scrollView.frame.size;
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(scrollViewSize.width * i, 0.0, scrollViewSize.width, scrollViewSize.height)];
        imageView.image = currentImage;
        imageView.contentMode = UIViewContentModeScaleAspectFill;

        imageView.clipsToBounds = YES;
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * self.imagesArray.count, self.scrollView.frame.size.height);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
