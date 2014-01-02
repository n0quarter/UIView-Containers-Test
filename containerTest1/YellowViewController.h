//
//  YellowViewController.h
//  containerTest1
//
//  Created by Viktor Shcherban on 1/1/14.
//  Copyright (c) 2014 Viktor Shcherban. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartViewController.h"

@interface YellowViewController : UIViewController

- (IBAction)goto:(id)sender;

@property (nonatomic, weak) id delegate;
@property int counter;

@end
