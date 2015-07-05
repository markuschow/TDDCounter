//
//  CounterViewControllerTests.m
//  TDDCounter
//
//  Created by Markus Chow on 6/7/15.
//  Copyright (c) 2015 Markus Chow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "CounterViewController.h"

/*
 scope:
 - count label
 - minus button
 - plus button
 
 */

@interface CounterViewControllerTests : XCTestCase {
	CounterViewController *sut;
}

@end

@implementation CounterViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	
	sut = [[CounterViewController alloc] init];
	[sut view];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
	
	sut = nil;
	
    [super tearDown];
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

- (BOOL)checkButtonContainAction:(UIButton *)button action:(NSString *)actionString {
	NSArray *array = [button actionsForTarget:sut forControlEvent:UIControlEventTouchUpInside];
	
	BOOL containAction = NO;
	for (id obj in array) {
		NSString *thisAction = (NSString *)obj;
		if ([thisAction isEqualToString:actionString]) {
			containAction = YES;
			break;
		}
	}
	return containAction;
}

- (void)testCountLabelShouldNotBeNil {
	
	XCTAssertNotNil(sut.countLabel, @"countLabel should not be nil");
}

- (void)testInitialCountLabelValueShouldBeZero {
	
	XCTAssertTrue([[[sut countLabel] text] isEqualToString:@"0"], @"countLabel initial value should be zero");

}

- (void)testPlusButtonShouldBeConnected {
	
	XCTAssertNotNil(sut.plusButton, @"plus button should not be nil");
}

- (void)testPlusButtonAction {
	
	XCTAssertTrue([self checkButtonContainAction:sut.plusButton action:@"incrementCount:"], @"minus button should contain action of decrementCount:");
}

- (void)testIncrementCountOnceShouldAddOneToCountLabel {
	[sut incrementCount:nil];
	
	XCTAssertTrue([[[sut countLabel] text] isEqualToString:@"1"], @"count label should be 1");
}

- (void)testIncrementCountTwiceShouldAddTwoToCountLabel {
	[sut incrementCount:nil];
	[sut incrementCount:nil];
	
	XCTAssertTrue([[[sut countLabel] text] isEqualToString:@"2"], @"count label should be 2");
}

- (void)testMinusButtonShouldBeConnected {
	
	XCTAssertNotNil(sut.minusButton, @"minus button should not be nil");
}

- (void)testMinusButtonAction {
	
	XCTAssertTrue([self checkButtonContainAction:sut.minusButton action:@"decrementCount:"], @"minus button should contain action of decrementCount:");
	
}

- (void)testDecrementCountOnceShouldSubstractOneFromCountLabel {
	[sut decrementCount:nil];
	
	XCTAssertTrue([[[sut countLabel] text] isEqualToString:@"-1"], @"count label should be -1");
}

- (void)testDecrementCountTwiceShouldSubstractTwoFromCountLabel {
	[sut decrementCount:nil];
	[sut decrementCount:nil];
	
	XCTAssertTrue([[[sut countLabel] text] isEqualToString:@"-2"], @"count label should be -2");
}

@end
