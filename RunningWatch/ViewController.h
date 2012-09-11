//
//  ViewController.h
//  RunningWatch
//
//  Created by Apple on 9/6/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblWatch;
- (IBAction)btnStart:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)btnReset:(id)sender;

@end
