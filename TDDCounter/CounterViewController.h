//
//  CounterViewController.h
//  TDDCounter
//
//  Created by Markus Chow on 6/7/15.
//  Copyright (c) 2015 Markus Chow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CounterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;


- (IBAction)incrementCount:(id)sender;
- (IBAction)decrementCount:(id)sender;

@end
