//
//  ISATimerViewController.m
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 25/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "ISATimerViewController.h"

@interface ISATimerViewController ()
@property (nonatomic, strong) NSTimer *espressoTimer;
@property (nonatomic, assign) NSInteger timeInSeconds;

@end

@implementation ISATimerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //todo...perhaps this should be moved to viewDidLoad...or appear...some lifecycle management maybe?
        self.timeInSeconds = 0.0;
        self.stopButton.alpha = 0.0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.stopButton.alpha = 0.0;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Buttons
- (IBAction)startButtonTapped:(id)sender {
        NSLog(@"%s", __PRETTY_FUNCTION__);
    [self stopTimer];
    self.espressoTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
    
    [UIView animateWithDuration:1.0 animations:^{
        self.startButton.alpha = 0.0;
        self.stopButton.alpha = 1.0;
    }];
}

- (IBAction)stopButtonTapped:(id)sender {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [self stopTimer];
    self.timeInSeconds = 0;

    [UIView animateWithDuration:1.0 animations:^{
        self.startButton.alpha = 1.0;
        self.stopButton.alpha = 0.0;
    }];
}

#pragma mark - Timer logic
- (void)tick {
    if(self.timeInSeconds < 59){
        self.timeInSeconds += 1;
    } else {
        [self stopTimer];
    }
    [self presentTime];
}

- (void)stopTimer {
        NSLog(@"%s", __PRETTY_FUNCTION__);
    if(self.espressoTimer){
        [self.espressoTimer invalidate];
        self.espressoTimer = nil;
    }
}

#pragma mark - Presentation
- (void)presentTime {
    self.timerLabel.text = [NSString stringWithFormat:@"%02li", self.timeInSeconds];
}

@end
