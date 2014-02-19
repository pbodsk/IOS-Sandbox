//
//  ISAScrollViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISAScrollViewController.h"

@interface ISAScrollViewController ()
@property (nonatomic, weak) NSArray *imagesArray;

@end

@implementation ISAScrollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Scroll View Controller";
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * 4, self.scrollView.frame.size.height);
    self.scrollView.delegate = self;
    self.textLabel.text = @"page 1";
    /*
    [super viewDidLoad];
    
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor],
                       [UIColor greenColor],[UIColor yellowColor] , nil];
    
    for (int i = 0; i < colors.count; i++) {
        
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.size = self.scrollView.frame.size;
        
        self.scrollView.pagingEnabled = YES;
        
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        subview.backgroundColor = [colors objectAtIndex:i];
        [self.scrollView addSubview:subview];
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);
     */

}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    CGPoint offset = scrollView.contentOffset;
    NSLog(@"Offset: x %f y: %f", offset.x, offset.y);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
