//
//  ViewController.m
//  localTimeStringToUTCString
//
//  Created by Imai Hiroshi on 12/11/17.
//  Copyright © 2017 Imai Hiroshi. All rights reserved.
//

#import "ViewController.h"
#import "timeFormat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	
	NSString* localTime = @"2017-12-12 12:34:56";
	
	NSString* UTCString = [timeFormat localTimeStringToUTCString:localTime];
	NSLog(@"UTCString=%@",UTCString);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
