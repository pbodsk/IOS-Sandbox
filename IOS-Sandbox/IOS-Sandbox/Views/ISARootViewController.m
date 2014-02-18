//
//  ISARootViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISARootViewController.h"
#import "ISAScrollViewController.h"

@interface ISARootViewController ()

@end

@implementation ISARootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Root View Controller";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIInterpolatingMotionEffect *verticalMotionEffect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    verticalMotionEffect.minimumRelativeValue = @(-10);
    verticalMotionEffect.maximumRelativeValue = @(10);
    
    UIInterpolatingMotionEffect *horisontalMotionEffect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    verticalMotionEffect.minimumRelativeValue = @(-10);
    verticalMotionEffect.maximumRelativeValue = @(10);
    
    UIMotionEffectGroup *effects = [UIMotionEffectGroup new];
    effects.motionEffects = @[horisontalMotionEffect, verticalMotionEffect];
    
    [self.view addMotionEffect:effects];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scrollviewButtonTapped:(id)sender {
    ISAScrollViewController *scrollViewController = [[ISAScrollViewController alloc]init];
    [self.navigationController pushViewController:scrollViewController animated:YES];
}
@end
