//
//  ViewController.m
//  RunningWatch
//
//  Created by Apple on 9/6/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController
@synthesize lblTitle;
@synthesize lblWatch;

NSTimer *myTimer;
static NSInteger counter = 0;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLblTitle:nil];
    [self setLblWatch:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)btnStart:(id)sender {
    if (![self.lblTitle.text isEqualToString:@"Timer is start"]) {
        myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/1.0
                                                      target:self
                                                    selector:@selector(updateTimer)
                                                    userInfo:nil
                                                     repeats:YES]; 
    }
    self.lblTitle.text = @"Timer is start";
    self.lblTitle.shadowColor = [UIColor blueColor];
}

- (IBAction)btnStop:(id)sender {
    self.lblTitle.text = @"Timer is stop";
    self.lblTitle.shadowColor = [UIColor redColor];
    [myTimer invalidate];
    myTimer = nil;
    [self updateTimer];
}



- (void) updateTimer {
    counter++;
    int seconds = counter % 60;
    int minutes = (counter / 60) % 60;
    int hours = counter / 3600;
    self.lblWatch.text = [NSString stringWithFormat:@"%02d:%02d:%02d", hours, minutes, seconds];
}

- (IBAction)btnReset:(id)sender {
    self.lblTitle.text = @"Timer";
    self.lblTitle.shadowColor = [UIColor greenColor];
    [myTimer invalidate];
    myTimer = nil;
    [self updateTimer];
    self.lblWatch.text = @"00:00:00";
    counter = -1;
}
@end

