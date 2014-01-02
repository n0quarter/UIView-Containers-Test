//
//  BlueViewController.m
//  containerTest1
//
//  Created by Viktor Shcherban on 1/1/14.
//  Copyright (c) 2014 Viktor Shcherban. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"Yellow #%i", _counter];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(button:)];

}

-(IBAction)button:(id)sender
{
    BlueViewController *bc = [self.storyboard instantiateViewControllerWithIdentifier:@"blue"];
    bc.delegate = _delegate;
    bc.counter = self.counter;
    bc.counter++;
    [self.navigationController pushViewController:bc animated:YES];
    
}

- (IBAction)goto:(id)sender
{
    NSLog(@"BlueViewController goto pressed");

    [_delegate gotoYellow];
}
@end
