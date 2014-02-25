//
//  ISATimerViewController.h
//  IOS-Sandbox
//
//  Created by Peter Bødskov on 25/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISATimerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
- (IBAction)startButtonTapped:(id)sender;
- (IBAction)stopButtonTapped:(id)sender;

@end
