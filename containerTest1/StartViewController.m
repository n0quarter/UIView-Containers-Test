//
//  StartViewController.m
//  containerTest1
//
//  Created by Viktor Shcherban on 12/31/13.
//  Copyright (c) 2013 Viktor Shcherban. All rights reserved.
//

#import "StartViewController.h"
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface StartViewController ()

@property (nonatomic, strong) YellowViewController *yellowViewController;
@property (nonatomic, strong) BlueViewController *blueViewController;

@property (nonatomic, weak)   UINavigationController *currentViewController;

@property (nonatomic, strong) UINavigationController *yellowNavigationController;
@property (nonatomic, strong) UINavigationController *blueNavigationController;

@end

@implementation StartViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self printAllViews];

    // init yellow
    self.yellowNavigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"yellowNav"];
    self.yellowViewController = (YellowViewController *)self.yellowNavigationController.topViewController;
    _yellowViewController.delegate = self;
    [self addChildViewController:_yellowNavigationController];

    // init blue
    self.blueNavigationController  = [self.storyboard instantiateViewControllerWithIdentifier:@"blueNav"];
    self.blueViewController = (BlueViewController *)self.blueNavigationController.topViewController;
    _blueViewController.delegate = self;
    [self addChildViewController:_blueNavigationController];

    //Okay, we start with Yellow
    [self.view addSubview:_yellowNavigationController.view];

    self.currentViewController = _yellowNavigationController;

}

- (void) gotoYellow {
    NSLog(@"gotoYellow");
    [self transTo:_yellowNavigationController];
}

- (void) gotoBlue {
    NSLog(@"gotoBlue");
    [self transTo:_blueNavigationController];
}

- (void) transTo:(UINavigationController *)to {

    [self printAllViews];

    [self transitionFromViewController:_currentViewController
                      toViewController:to
                              duration:0
                               options:UIViewAnimationOptionTransitionNone
                            animations:^{}
                            completion:^(BOOL finished) {
                                _currentViewController = to;
                            }];
}


- (void) printAllViews {
    NSMutableArray *allControllers = [[NSMutableArray alloc] initWithArray:self.navigationController.viewControllers];
    NSLog(@"all = %@", allControllers);
}



@end
