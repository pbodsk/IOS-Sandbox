//
//  ISAScrollViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 18/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISAScrollViewController.h"

@interface ISAScrollViewController ()

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
