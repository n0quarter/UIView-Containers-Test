//
//  newViewController.m
//  containerTest1
//
//  Created by Viktor Shcherban on 1/1/14.
//  Copyright (c) 2014 Viktor Shcherban. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"Yellow #%i", _counter];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(button:)];

}

-(IBAction)button:(id)sender
{
    YellowViewController *yc = [self.storyboard instantiateViewControllerWithIdentifier:@"yellow"];
    yc.delegate = _delegate;
    yc.counter = self.counter;
    yc.counter++;
    [self.navigationController pushViewController:yc animated:YES];
    
}

- (IBAction)goto:(id)sender {
    NSLog(@"YellowViewController goto pressed");
    [_delegate gotoBlue];
}

@end
