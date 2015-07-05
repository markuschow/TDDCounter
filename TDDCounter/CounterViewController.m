//
//  CounterViewController.m
//  TDDCounter
//
//  Created by Markus Chow on 6/7/15.
//  Copyright (c) 2015 Markus Chow. All rights reserved.
//

#import "CounterViewController.h"

@interface CounterViewController ()

@end

@implementation CounterViewController {
	NSInteger count;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateCountLabel {
	_countLabel.text = [NSString stringWithFormat:@"%ld", (long)count];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)incrementCount:(id)sender {
	++count;
	[self updateCountLabel];
}

- (IBAction)decrementCount:(id)sender {
	--count;
	[self updateCountLabel];
}

@end
